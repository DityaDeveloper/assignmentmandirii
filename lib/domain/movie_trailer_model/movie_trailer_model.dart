class MovieTrailerModel {
  final String id;
  final String videoKey;
  final String videoName;

//  final List<MovieGenreModel> list;

  MovieTrailerModel.fromJsonMap(Map<String, dynamic> json)
      : id = json["id"],
        videoKey = json["key"],
        videoName = json["name"].toString();
}
