import 'package:mandiritestadityatmdb/application/uri_constant.dart';

class MovieModel {
  final int id;
  final String overview;
  final String posterPath;
  final String backdropPath;
  final String releaseDate;
  final String originalTitle;
  final String originalLanguage;
  final double popularity;
  final double voteAverageInt;
  final int voteCount;
  final bool video;
  final bool adult;
//  final List<MovieGenreModel> list;

  MovieModel.fromJsonMap(Map<String, dynamic> json)
      : id = json["id"],
        adult = json["adult"],
        overview = json["overview"].toString().toLowerCase(),
        releaseDate = json["release_date"].toString().toLowerCase().length > 4
            ? json["release_date"].toString().toLowerCase().substring(0, 4)
            : "",
        originalTitle = json["original_title"].toString().toLowerCase(),
        originalLanguage = json["original_language"].toString().toLowerCase(),
        popularity = json["popularity"],
        voteAverageInt = json["vote_average"] + .0,
        voteCount = json["vote_count"],
        // list = MovieGenreScreenResponse.fromJson(json["genre_ids"]).list,
        video = json["video"],
        posterPath = MasterUri.imageUrl.storageUrl + json["poster_path"],
        backdropPath = MasterUri.imageUrl.storageUrl + json["backdrop_path"];
}
