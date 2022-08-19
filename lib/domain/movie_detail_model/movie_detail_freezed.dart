import 'package:freezed_annotation/freezed_annotation.dart';

import 'movie_detail_model.dart';

part 'movie_detail_freezed.freezed.dart';

@freezed
abstract class MovieDetail with _$MovieDetail {
  const factory MovieDetail({
    @Default(1) int page,
    @Default(MovieDetailModel) data,
    @Default(true) bool isLoading,
    @Default(false) bool isLoadMoreError,
    @Default(false) bool isLoadMoreDone,
  }) = _MovieDetail;

  const MovieDetail._();
}
