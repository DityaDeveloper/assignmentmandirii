import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mandiritestadityatmdb/data/repo/movie_data_source.dart';

import '../../../domain/movie_discover_model/movie_discover_freezed.dart';
import '../../../domain/movie_discover_model/movie_discover_model.dart';
import '../../../domain/movie_discover_model/movie_discover_model_response.dart';

class MovieNowPlayingNotifier extends StateNotifier<MovieDiscover> {
  MovieNowPlayingNotifier() : super(const MovieDiscover()) {
    _initGet();
  }

  MovieDataSource movieDataSource = MovieDataSource();
  List? tempList = [];

  _initGet([int? initPage]) async {
    final page = initPage ?? state.page;
    final response = await movieDataSource.loadMovieNowPlayingList(page);
    if (response == null) {
      state = state.copyWith(page: page, isLoading: false);
      return;
    }

    final List<dynamic> parsed = response!['results'];
    List<MovieModel> responseModelList =
        MovieDiscoverScreenResponse.fromJson(parsed).list;
    state =
        state.copyWith(page: page, isLoading: false, list: responseModelList);
    debugPrint('get list : ${responseModelList.length}');
  }

  Future<void> refresh() async {
    _initGet();
  }

  loadMorePost() async {
    StringBuffer bf = StringBuffer();

    bf.write('try to request loading ${state.isLoading} at ${state.page + 1}');
    if (state.isLoading) {
      bf.write(' fail');
      return;
    }
    bf.write(' success');
    debugPrint(bf.toString());
    state = state.copyWith(
        isLoading: true, isLoadMoreDone: false, isLoadMoreError: false);

    final response =
        await movieDataSource.loadMovieDiscoverList(state.page + 1);

    if (response == null) {
      // error
      state = state.copyWith(isLoadMoreError: true, isLoading: false);
      return;
    }
    final List<dynamic> parsed = response!['results'];
    List<MovieModel> responseModelList =
        MovieDiscoverScreenResponse.fromJson(parsed).list;
    debugPrint('get list : ${responseModelList.length}');

    debugPrint(
        'load more ${responseModelList.length} posts at page ${state.page + 1}');
    if (response.isNotEmpty) {
      state = state.copyWith(
          page: state.page + 1,
          isLoading: false,
          isLoadMoreDone: responseModelList.isEmpty,
          list: [...state.list, ...responseModelList]);
    } else {
      state = state.copyWith(
        isLoading: false,
        isLoadMoreDone: responseModelList.isEmpty,
      );
    }
  }
}
