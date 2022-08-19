import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mandiritestadityatmdb/data/repo/movie_data_source.dart';
import 'package:mandiritestadityatmdb/domain/movie_detail_model/movie_detail_freezed.dart';
import 'package:mandiritestadityatmdb/domain/movie_detail_model/movie_detail_model.dart';
import 'package:mandiritestadityatmdb/domain/movie_detail_model/movie_detail_response_model.dart';

class MovieInfoNotifier extends StateNotifier {
  MovieDataSource movieDataSource = MovieDataSource();
  List? tempList = [];

  MovieInfoNotifier(super.state);

  _initGet(int movieId) async {
    final response = await movieDataSource.loadMovieDetail(movieId);
    if (response == null) {
      state = state;
      return;
    }

    Map<String, dynamic> map = response;
    // List<dynamic> data = map["genres"];
    //debugPrint(data[0]["name"]);
    debugPrint('testing : ${map.toString()}');

    //   List<MovieDetailModel> responseModel = [];

    //   //final dynamic parsed = response;
    //   Map decoded = jsonDecode(response);
    // responseModel =
    //       MovieDetailScreenResponse.fromJson(decoded).list;

    // final dynamic parsed = response;
    MovieDetailModel responseModel = MovieDetailModel.fromJsonMap(map);
    state = responseModel;
    // debugPrint('get data : $decoded');
  }

  Future<void> request(int movieId) async {
    _initGet(movieId);
  }
}
