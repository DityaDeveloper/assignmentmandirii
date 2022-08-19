import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mandiritestadityatmdb/domain/movie_trailer_model/movie_trailer_model.dart';

part 'movie_trailer_freezed.freezed.dart';

@freezed
abstract class MovieTrailer with _$MovieTrailer {
  const factory MovieTrailer({
    @Default(1) int page,
    @Default([]) List<MovieTrailerModel> list,
    @Default(true) bool isLoading,
    @Default(false) bool isLoadMoreError,
    @Default(false) bool isLoadMoreDone,
  }) = _MovieTrailer;

  const MovieTrailer._();
}
