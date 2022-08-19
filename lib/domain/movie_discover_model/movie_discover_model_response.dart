import 'movie_discover_model.dart';

class MovieDiscoverScreenResponse {
  final List<MovieModel> list;

  MovieDiscoverScreenResponse({
    required this.list,
  });

  factory MovieDiscoverScreenResponse.fromJson(List<dynamic> parsedJson) {
    List<MovieModel> list = <MovieModel>[];
    list = parsedJson.map((i) => MovieModel.fromJsonMap(i)).toList();

    return MovieDiscoverScreenResponse(list: list);
  }
}
