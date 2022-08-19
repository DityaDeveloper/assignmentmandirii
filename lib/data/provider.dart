import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mandiritestadityatmdb/domain/movie_detail_model/movie_detail_model.dart';
import 'package:mandiritestadityatmdb/domain/movie_genre_model/movie_genre_freezed.dart';
import 'package:mandiritestadityatmdb/domain/movie_genre_model/movie_genre_model.dart';
import 'package:mandiritestadityatmdb/domain/movie_trailer_model/movie_trailer_freezed.dart';
import 'package:mandiritestadityatmdb/domain/movie_trailer_model/movie_trailer_model.dart';
import 'package:mandiritestadityatmdb/presentation/screen/login/login_view_model.dart';
import 'package:mandiritestadityatmdb/presentation/screen/movie_discover/movie_discover_view_model.dart';
import 'package:mandiritestadityatmdb/presentation/screen/movie_genre/movie_genre_view_model.dart';
import 'package:mandiritestadityatmdb/presentation/screen/movie_info/movie_info_view_model.dart';
import 'package:mandiritestadityatmdb/presentation/screen/movie_nowplaying/movie_nowplaying_view_model.dart';
import 'package:mandiritestadityatmdb/presentation/screen/movie_popular/movie_popular_view_model.dart';
import 'package:mandiritestadityatmdb/presentation/screen/movie_trailer/movie_trailer_view_model.dart';
import 'package:mandiritestadityatmdb/presentation/screen/movie_upcoming/movie_upcoming_view_model.dart';

import '../domain/movie_detail_model/movie_detail_freezed.dart';
import '../domain/movie_discover_model/movie_discover_freezed.dart';
import '../domain/movie_discover_model/movie_discover_model.dart';

final movieDiscoverProvider =
    StateNotifierProvider<MovieDiscoverNotifier, MovieDiscover>((ref) {
  return MovieDiscoverNotifier();
});

final movieGenreProvider =
    StateNotifierProvider<MovieGenreNotifier, MovieGenre>((ref) {
  return MovieGenreNotifier();
});

final movieNowPlayingProvider =
    StateNotifierProvider<MovieNowPlayingNotifier, MovieDiscover>((ref) {
  return MovieNowPlayingNotifier();
});
final movieNowPlayingSearchProvider = StateProvider<List<MovieModel>>((ref) {
  final searchState = ref.watch(movieDiscoverProvider);
  final key = ref.watch(keyProvider);

  return searchState.list
      .where((element) =>
          element.originalTitle.contains(key) ||
          element.id.toString().contains(key))
      .toList();
});

final moviePopularProvider =
    StateNotifierProvider<MoviePopularNotifier, MovieDiscover>((ref) {
  return MoviePopularNotifier();
});
final moviePopularSearchProvider = StateProvider<List<MovieModel>>((ref) {
  final searchState = ref.watch(movieDiscoverProvider);
  final key = ref.watch(keyProvider);

  return searchState.list
      .where((element) =>
          element.originalTitle.contains(key) ||
          element.id.toString().contains(key))
      .toList();
});
final movieUpcomingProvider =
    StateNotifierProvider<MovieUpcomingNotifier, MovieDiscover>((ref) {
  return MovieUpcomingNotifier();
});
final movieUpcomingSearchProvider = StateProvider<List<MovieModel>>((ref) {
  final searchState = ref.watch(movieDiscoverProvider);
  final key = ref.watch(keyProvider);

  return searchState.list
      .where((element) =>
          element.originalTitle.contains(key) ||
          element.id.toString().contains(key))
      .toList();
});

final movieTrailerProvider =
    StateNotifierProvider<MovieTrailerNotifier, MovieTrailer>((ref) {
  return MovieTrailerNotifier();
});
final movieTrailerSearchProvider =
    StateProvider<List<MovieTrailerModel>>((ref) {
  final searchState = ref.watch(movieTrailerProvider);
  final key = ref.watch(keyProvider);

  return searchState.list
      .where((element) =>
          element.videoName.contains(key) ||
          element.videoKey.toString().contains(key))
      .toList();
});

final movieDetailProvider = StateNotifierProvider((ref) {
  return MovieInfoNotifier(0);
});

final movieDiscoverSearchProvider = StateProvider<List<MovieModel>>((ref) {
  final searchState = ref.watch(movieDiscoverProvider);
  final key = ref.watch(keyProvider);

  return searchState.list
      .where((element) =>
          element.originalTitle.contains(key) ||
          element.id.toString().contains(key))
      .toList();
});
final movieGenreSearchProvider = StateProvider<List<MovieGenreModel>>((ref) {
  final searchState = ref.watch(movieGenreProvider);
  final key = ref.watch(keyProvider);

  return searchState.list
      .where((element) =>
          element.name.contains(key) || element.id.toString().contains(key))
      .toList();
});

final userGuessProvider =
    StateNotifierProvider<GuessSessionNotifier, String>((ref) {
  return GuessSessionNotifier();
});

final keyProvider = StateProvider<String>((ref) {
  return '';
});
