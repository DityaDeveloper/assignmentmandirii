import 'package:freezed_annotation/freezed_annotation.dart';

import 'movie_discover_model.dart';

part 'movie_discover_freezed.freezed.dart';

@freezed
abstract class MovieDiscover with _$MovieDiscover {
  const factory MovieDiscover({
    @Default(1) int page,
    @Default([]) List<MovieModel> list,
    @Default(true) bool isLoading,
    @Default(false) bool isLoadMoreError,
    @Default(false) bool isLoadMoreDone,
  }) = _MovieDiscover;

  const MovieDiscover._();
}
