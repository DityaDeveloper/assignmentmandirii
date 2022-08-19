// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'movie_detail_freezed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MovieDetailTearOff {
  const _$MovieDetailTearOff();

  _MovieDetail call(
      {int page = 1,
      dynamic data = MovieDetailModel,
      bool isLoading = true,
      bool isLoadMoreError = false,
      bool isLoadMoreDone = false}) {
    return _MovieDetail(
      page: page,
      data: data,
      isLoading: isLoading,
      isLoadMoreError: isLoadMoreError,
      isLoadMoreDone: isLoadMoreDone,
    );
  }
}

/// @nodoc
const $MovieDetail = _$MovieDetailTearOff();

/// @nodoc
mixin _$MovieDetail {
  int get page => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadMoreError => throw _privateConstructorUsedError;
  bool get isLoadMoreDone => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieDetailCopyWith<MovieDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailCopyWith<$Res> {
  factory $MovieDetailCopyWith(
          MovieDetail value, $Res Function(MovieDetail) then) =
      _$MovieDetailCopyWithImpl<$Res>;
  $Res call(
      {int page,
      dynamic data,
      bool isLoading,
      bool isLoadMoreError,
      bool isLoadMoreDone});
}

/// @nodoc
class _$MovieDetailCopyWithImpl<$Res> implements $MovieDetailCopyWith<$Res> {
  _$MovieDetailCopyWithImpl(this._value, this._then);

  final MovieDetail _value;
  // ignore: unused_field
  final $Res Function(MovieDetail) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? data = freezed,
    Object? isLoading = freezed,
    Object? isLoadMoreError = freezed,
    Object? isLoadMoreDone = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadMoreError: isLoadMoreError == freezed
          ? _value.isLoadMoreError
          : isLoadMoreError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadMoreDone: isLoadMoreDone == freezed
          ? _value.isLoadMoreDone
          : isLoadMoreDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$MovieDetailCopyWith<$Res>
    implements $MovieDetailCopyWith<$Res> {
  factory _$MovieDetailCopyWith(
          _MovieDetail value, $Res Function(_MovieDetail) then) =
      __$MovieDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {int page,
      dynamic data,
      bool isLoading,
      bool isLoadMoreError,
      bool isLoadMoreDone});
}

/// @nodoc
class __$MovieDetailCopyWithImpl<$Res> extends _$MovieDetailCopyWithImpl<$Res>
    implements _$MovieDetailCopyWith<$Res> {
  __$MovieDetailCopyWithImpl(
      _MovieDetail _value, $Res Function(_MovieDetail) _then)
      : super(_value, (v) => _then(v as _MovieDetail));

  @override
  _MovieDetail get _value => super._value as _MovieDetail;

  @override
  $Res call({
    Object? page = freezed,
    Object? data = freezed,
    Object? isLoading = freezed,
    Object? isLoadMoreError = freezed,
    Object? isLoadMoreDone = freezed,
  }) {
    return _then(_MovieDetail(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed ? _value.data : data,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadMoreError: isLoadMoreError == freezed
          ? _value.isLoadMoreError
          : isLoadMoreError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadMoreDone: isLoadMoreDone == freezed
          ? _value.isLoadMoreDone
          : isLoadMoreDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MovieDetail extends _MovieDetail {
  const _$_MovieDetail(
      {this.page = 1,
      this.data = MovieDetailModel,
      this.isLoading = true,
      this.isLoadMoreError = false,
      this.isLoadMoreDone = false})
      : super._();

  @JsonKey(defaultValue: 1)
  @override
  final int page;
  @JsonKey(defaultValue: MovieDetailModel)
  @override
  final dynamic data;
  @JsonKey(defaultValue: true)
  @override
  final bool isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoadMoreError;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoadMoreDone;

  @override
  String toString() {
    return 'MovieDetail(page: $page, data: $data, isLoading: $isLoading, isLoadMoreError: $isLoadMoreError, isLoadMoreDone: $isLoadMoreDone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieDetail &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.isLoadMoreError, isLoadMoreError) ||
                const DeepCollectionEquality()
                    .equals(other.isLoadMoreError, isLoadMoreError)) &&
            (identical(other.isLoadMoreDone, isLoadMoreDone) ||
                const DeepCollectionEquality()
                    .equals(other.isLoadMoreDone, isLoadMoreDone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isLoadMoreError) ^
      const DeepCollectionEquality().hash(isLoadMoreDone);

  @JsonKey(ignore: true)
  @override
  _$MovieDetailCopyWith<_MovieDetail> get copyWith =>
      __$MovieDetailCopyWithImpl<_MovieDetail>(this, _$identity);
}

abstract class _MovieDetail extends MovieDetail {
  const factory _MovieDetail(
      {int page,
      dynamic data,
      bool isLoading,
      bool isLoadMoreError,
      bool isLoadMoreDone}) = _$_MovieDetail;
  const _MovieDetail._() : super._();

  @override
  int get page => throw _privateConstructorUsedError;
  @override
  dynamic get data => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isLoadMoreError => throw _privateConstructorUsedError;
  @override
  bool get isLoadMoreDone => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MovieDetailCopyWith<_MovieDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
