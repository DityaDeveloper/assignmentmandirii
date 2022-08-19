import 'package:flutter/foundation.dart';
import 'package:mandiritestadityatmdb/application/key_constant.dart';
import 'package:mandiritestadityatmdb/application/uri_constant.dart';
import 'package:mandiritestadityatmdb/data/network/base_network.dart';

class MovieDataSource {
  Future<dynamic> loadMovieGenreList() async {
    String pathUrl =
        '${MasterUri.movieEndpoint.movieGenreList}${KeyLocal.appKeyLocal.keyTokenTMDB}&language=${KeyLocal.appKeyLocal.movieDefaultLanguage}';
    debugPrint("testing : $pathUrl");
    return BaseNetwork().getList(pathUrl);
  }

  Future<dynamic> loadMovieDiscoverList(int page) async {
    debugPrint("url for page : $page");
    String pathUrl =
        '${MasterUri.movieEndpoint.movieDiscoverList}${KeyLocal.appKeyLocal.keyTokenTMDB}&language=${KeyLocal.appKeyLocal.movieDefaultLanguage}&sort_by=${KeyLocal.appKeyLocal.sortby}&include_adult=${KeyLocal.appKeyLocal.includeAdult}&include_video=${KeyLocal.appKeyLocal.includeVieo}&page=$page&with_watch_monetization_types=${KeyLocal.appKeyLocal.withWatchMonetizationTypes}';
    debugPrint("path : $pathUrl");
    return BaseNetwork().getList(pathUrl);
  }

  Future<dynamic> loadMovieNowPlayingList(int page) async {
    debugPrint("url for page : $page");
    String pathUrl =
        '${MasterUri.movieEndpoint.movieNowPlayingList}${KeyLocal.appKeyLocal.keyTokenTMDB}&language=${KeyLocal.appKeyLocal.movieDefaultLanguage}&page=$page';
    debugPrint("path : $pathUrl");
    return BaseNetwork().getList(pathUrl);
  }

  Future<dynamic> loadMoviePopularList(int page) async {
    debugPrint("url for page : $page");
    String pathUrl =
        '${MasterUri.movieEndpoint.moviePopularList}${KeyLocal.appKeyLocal.keyTokenTMDB}&language=${KeyLocal.appKeyLocal.movieDefaultLanguage}&page=$page';
    debugPrint("path : $pathUrl");
    return BaseNetwork().getList(pathUrl);
  }

  Future<dynamic> loadMovieUpcomingList(int page) async {
    debugPrint("url for page : $page");
    String pathUrl =
        '${MasterUri.movieEndpoint.movieUpcomingList}${KeyLocal.appKeyLocal.keyTokenTMDB}&language=${KeyLocal.appKeyLocal.movieDefaultLanguage}&page=$page';
    debugPrint("path : $pathUrl");
    return BaseNetwork().getList(pathUrl);
  }

  Future<dynamic> loadMovieTrailer(int movieId) async {
    debugPrint("Movie ID : $movieId");
    String pathUrl =
        '3/movie/$movieId${MasterUri.movieEndpoint.movieTrailer}${KeyLocal.appKeyLocal.keyTokenTMDB}&language=${KeyLocal.appKeyLocal.movieDefaultLanguage}';
    debugPrint("path : $pathUrl");
    return BaseNetwork().getList(pathUrl);
  }

  Future<dynamic> loadMovieDetail(int movieId) async {
    debugPrint("Movie ID : $movieId");
    String pathUrl =
        '3/movie/$movieId?api_key=${KeyLocal.appKeyLocal.keyTokenTMDB}';
    debugPrint("path : $pathUrl");
    return BaseNetwork().get(pathUrl);
  }
}
