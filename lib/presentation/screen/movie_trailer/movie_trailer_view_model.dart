import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mandiritestadityatmdb/data/repo/movie_data_source.dart';
import 'package:mandiritestadityatmdb/domain/movie_trailer_model/movie_trailer_freezed.dart';
import 'package:mandiritestadityatmdb/domain/movie_trailer_model/movie_trailer_model.dart';
import 'package:mandiritestadityatmdb/domain/movie_trailer_model/movie_trailer_model_response.dart';

class MovieTrailerNotifier extends StateNotifier<MovieTrailer> {
  MovieTrailerNotifier() : super(const MovieTrailer()) {
    //_initGet();
  }

  MovieDataSource movieDataSource = MovieDataSource();
  List? tempList = [];

  _initGet([int? movieId]) async {
    // final page = initPage ?? state.page;
    final response = await movieDataSource.loadMovieTrailer(movieId!);
    if (response == null) {
      state = state.copyWith(isLoading: false);
      return;
    }

    final List<dynamic> parsed = response!['results'];
    List<MovieTrailerModel> responseModelList =
        MovieTrailerScreenResponse.fromJson(parsed).list;
    state = state.copyWith(isLoading: false, list: responseModelList);
    debugPrint('trailer : ${parsed.toString()}');
  }

  Future<void> reqTrailerData(int movieId) async {
    _initGet(movieId);
  }
}
