import 'package:mandiritestadityatmdb/domain/movie_trailer_model/movie_trailer_freezed.dart';

import 'movie_trailer_model.dart';

class MovieTrailerScreenResponse {
  final List<MovieTrailerModel> list;

  MovieTrailerScreenResponse({
    required this.list,
  });

  factory MovieTrailerScreenResponse.fromJson(List<dynamic> parsedJson) {
    List<MovieTrailerModel> list = <MovieTrailerModel>[];
    list = parsedJson.map((i) => MovieTrailerModel.fromJsonMap(i)).toList();

    return MovieTrailerScreenResponse(list: list);
  }
}
