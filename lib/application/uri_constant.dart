class MasterUri {
  static UserEndpoint get userEndpoint => UserEndpoint();
  static MovieEndpoint get movieEndpoint => MovieEndpoint();
  static BaseUrl get baseUrl => BaseUrl();
  static ImageUrl get imageUrl => ImageUrl();
}

class BaseUrl {
  String get prodUrl => "https://api.themoviedb.org";
}

class ImageUrl {
  String get storageUrl => "https://image.tmdb.org/t/p/w500";
}

class UserEndpoint {
  // guest session
  String get guestsession => "/3/authentication/guest_session/new?api_key=";
}

class MovieEndpoint {
  String get movieGenreList => "3/genre/movie/list?api_key=";
  String get movieDiscoverList => "3/discover/movie?api_key=";
  String get movieNowPlayingList => "3/movie/now_playing?api_key=";
  String get moviePopularList => "3/movie/popular?api_key=";
  String get movieUpcomingList => "3/movie/upcoming?api_key=";
  String get movieTrailer => "/videos?api_key=";
  String get register => "register";
  String get profile => "profile";
}
