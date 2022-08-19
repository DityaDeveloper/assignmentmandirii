// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'movie_trailer_freezed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MovieTrailerTearOff {
  const _$MovieTrailerTearOff();

  _MovieTrailer call(
      {int page = 1,
      List<MovieTrailerModel> list = const [],
      bool isLoading = true,
      bool isLoadMoreError = false,
      bool isLoadMoreDone = false}) {
    return _MovieTrailer(
      page: page,
      list: list,
      isLoading: isLoading,
      isLoadMoreError: isLoadMoreError,
      isLoadMoreDone: isLoadMoreDone,
    );
  }
}

/// @nodoc
const $MovieTrailer = _$MovieTrailerTearOff();

/// @nodoc
mixin _$MovieTrailer {
  int get page => throw _privateConstructorUsedError;
  List<MovieTrailerModel> get list => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadMoreError => throw _privateConstructorUsedError;
  bool get isLoadMoreDone => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieTrailerCopyWith<MovieTrailer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieTrailerCopyWith<$Res> {
  factory $MovieTrailerCopyWith(
          MovieTrailer value, $Res Function(MovieTrailer) then) =
      _$MovieTrailerCopyWithImpl<$Res>;
  $Res call(
      {int page,
      List<MovieTrailerModel> list,
      bool isLoading,
      bool isLoadMoreError,
      bool isLoadMoreDone});
}

/// @nodoc
class _$MovieTrailerCopyWithImpl<$Res> implements $MovieTrailerCopyWith<$Res> {
  _$MovieTrailerCopyWithImpl(this._value, this._then);

  final MovieTrailer _value;
  // ignore: unused_field
  final $Res Function(MovieTrailer) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? list = freezed,
    Object? isLoading = freezed,
    Object? isLoadMoreError = freezed,
    Object? isLoadMoreDone = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<MovieTrailerModel>,
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
abstract class _$MovieTrailerCopyWith<$Res>
    implements $MovieTrailerCopyWith<$Res> {
  factory _$MovieTrailerCopyWith(
          _MovieTrailer value, $Res Function(_MovieTrailer) then) =
      __$MovieTrailerCopyWithImpl<$Res>;
  @override
  $Res call(
      {int page,
      List<MovieTrailerModel> list,
      bool isLoading,
      bool isLoadMoreError,
      bool isLoadMoreDone});
}

/// @nodoc
class __$MovieTrailerCopyWithImpl<$Res> extends _$MovieTrailerCopyWithImpl<$Res>
    implements _$MovieTrailerCopyWith<$Res> {
  __$MovieTrailerCopyWithImpl(
      _MovieTrailer _value, $Res Function(_MovieTrailer) _then)
      : super(_value, (v) => _then(v as _MovieTrailer));

  @override
  _MovieTrailer get _value => super._value as _MovieTrailer;

  @override
  $Res call({
    Object? page = freezed,
    Object? list = freezed,
    Object? isLoading = freezed,
    Object? isLoadMoreError = freezed,
    Object? isLoadMoreDone = freezed,
  }) {
    return _then(_MovieTrailer(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<MovieTrailerModel>,
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

class _$_MovieTrailer extends _MovieTrailer {
  const _$_MovieTrailer(
      {this.page = 1,
      this.list = const [],
      this.isLoading = true,
      this.isLoadMoreError = false,
      this.isLoadMoreDone = false})
      : super._();

  @JsonKey(defaultValue: 1)
  @override
  final int page;
  @JsonKey(defaultValue: const [])
  @override
  final List<MovieTrailerModel> list;
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
    return 'MovieTrailer(page: $page, list: $list, isLoading: $isLoading, isLoadMoreError: $isLoadMoreError, isLoadMoreDone: $isLoadMoreDone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieTrailer &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)) &&
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
      const DeepCollectionEquality().hash(list) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(isLoadMoreError) ^
      const DeepCollectionEquality().hash(isLoadMoreDone);

  @JsonKey(ignore: true)
  @override
  _$MovieTrailerCopyWith<_MovieTrailer> get copyWith =>
      __$MovieTrailerCopyWithImpl<_MovieTrailer>(this, _$identity);
}

abstract class _MovieTrailer extends MovieTrailer {
  const factory _MovieTrailer(
      {int page,
      List<MovieTrailerModel> list,
      bool isLoading,
      bool isLoadMoreError,
      bool isLoadMoreDone}) = _$_MovieTrailer;
  const _MovieTrailer._() : super._();

  @override
  int get page => throw _privateConstructorUsedError;
  @override
  List<MovieTrailerModel> get list => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isLoadMoreError => throw _privateConstructorUsedError;
  @override
  bool get isLoadMoreDone => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MovieTrailerCopyWith<_MovieTrailer> get copyWith =>
      throw _privateConstructorUsedError;
}
