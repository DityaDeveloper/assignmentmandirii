import 'package:mandiritestadityatmdb/application/uri_constant.dart';
import 'package:mandiritestadityatmdb/domain/movie_genre_model/movie_genre_model.dart';
import 'package:mandiritestadityatmdb/domain/movie_genre_model/movie_genre_model_response.dart';

class MovieDetailModel {
  final int id;
  final String overview;
  final String posterPath;
  final String backdropPath;
  final String releaseDate;
  final String releaseStatus;
  final String tagline;
  final int budget;
  final String originalTitle;
  final String originalLanguage;
  final double popularity;
  final double voteAverageInt;
  final int voteCount;
  final int duration;
  final bool video;
  final bool adult;
  final List<MovieGenreModel> list;

  MovieDetailModel.fromJsonMap(Map<String, dynamic> json)
      : id = json["id"],
        adult = json["adult"],
        overview = json["overview"].toString().toLowerCase(),
        releaseDate = json["release_date"].toString().toLowerCase().length > 4
            ? json["release_date"].toString().toLowerCase().substring(0, 4)
            : "",
        originalTitle = json["original_title"].toString().toLowerCase(),
        originalLanguage = json["original_language"].toString().toLowerCase(),
        popularity = json["popularity"],
        budget = json["budget"],
        tagline = json["tagline"],
        releaseStatus = json["status"],
        duration = json["runtime"],
        voteAverageInt = json["vote_average"] + .0,
        voteCount = json["vote_count"],
        list = MovieGenreScreenResponse.fromJson(json["genres"]).list,
        video = json["video"],
        posterPath = MasterUri.imageUrl.storageUrl + json["poster_path"],
        backdropPath = MasterUri.imageUrl.storageUrl + json["backdrop_path"];
}
