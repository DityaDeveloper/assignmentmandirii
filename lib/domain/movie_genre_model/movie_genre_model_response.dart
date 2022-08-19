import 'movie_genre_model.dart';

class MovieGenreScreenResponse {
  final List<MovieGenreModel> list;

  MovieGenreScreenResponse({
    required this.list,
  });

  factory MovieGenreScreenResponse.fromJson(List<dynamic> parsedJson) {
    List<MovieGenreModel> list = <MovieGenreModel>[];
    list = parsedJson.map((i) => MovieGenreModel.fromJsonMap(i)).toList();

    return MovieGenreScreenResponse(list: list);
  }
}
