import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'movie_genre_model.dart';

part 'movie_genre_freezed.freezed.dart';

@freezed
abstract class MovieGenre with _$MovieGenre {
  const factory MovieGenre({
    @Default(1) int page,
    @Default([]) List<MovieGenreModel> list,
    @Default(true) bool isLoading,
    @Default(false) bool isLoadMoreError,
    @Default(false) bool isLoadMoreDone,
  }) = _MovieGenre;

  const MovieGenre._();
}
