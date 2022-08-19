import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mandiritestadityatmdb/data/repo/movie_data_source.dart';
import 'package:mandiritestadityatmdb/domain/movie_genre_model/movie_genre_freezed.dart';
import 'package:mandiritestadityatmdb/domain/movie_genre_model/movie_genre_model.dart';

import '../../../domain/movie_genre_model/movie_genre_model_response.dart';

class MovieGenreNotifier extends StateNotifier<MovieGenre> {
  MovieGenreNotifier() : super(const MovieGenre()) {
    _initGet();
  }

  MovieDataSource movieDataSource = MovieDataSource();
  List? tempList = [];

  _initGet() async {
    Map? response = await movieDataSource.loadMovieGenreList();
    if (response == null) {
      state = state.copyWith(isLoading: false);
      return;
    }
    final List<dynamic> parsed = response['genres'];
    List<MovieGenreModel> responseModelList =
        MovieGenreScreenResponse.fromJson(parsed).list;

    debugPrint('list genre : ${response.toString()}');
    state = state.copyWith(isLoading: false, list: responseModelList);
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

    Map? response = await movieDataSource.loadMovieGenreList();
    final List<dynamic> parsed = response!['genres'];
    List<MovieGenreModel> responseModelList =
        MovieGenreScreenResponse.fromJson(parsed).list;

    if (responseModelList.isEmpty) {
      // error
      state = state.copyWith(isLoadMoreError: true, isLoading: false);
      return;
    }

    debugPrint('load more ${responseModelList.length}');
    if (responseModelList.isNotEmpty) {
      state = state.copyWith(
        isLoading: false,
        isLoadMoreDone: true,
      );
    }
  }
}
