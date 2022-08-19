class MovieGenreModel {
  final int id;
  final String name;

  MovieGenreModel.fromJsonMap(Map<String, dynamic> json)
      : id = json["id"],
        name = json["name"].toString().toLowerCase();
}
