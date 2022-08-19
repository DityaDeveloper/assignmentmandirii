import 'package:mandiritestadityatmdb/domain/movie_detail_model/movie_detail_model.dart';

import 'movie_detail_model.dart';

class MovieDetailScreenResponse {
  final List<MovieDetailModel> list;

  MovieDetailScreenResponse({
    required this.list,
  });

  factory MovieDetailScreenResponse.fromJson(List<dynamic> parsedJson) {
    List<MovieDetailModel> list = <MovieDetailModel>[];
    list = parsedJson.map((i) => MovieDetailModel.fromJsonMap(i)).toList();

    return MovieDetailScreenResponse(list: list);
  }
}
