class KeyLocal {
  static AppKeyLocal get appKeyLocal => AppKeyLocal();
}

class AppKeyLocal {
  // token TMDB
  String get keyTokenTMDB => "4dfd9a16032455ca26b13dfa596bff1c";

  // discover movie
  String get movieDefaultLanguage => "en-US";
  String get sortby => "popularity.desc";
  String get includeAdult => "false";
  String get includeVieo => "false";
  String get withWatchMonetizationTypes => "flatrate";
}
