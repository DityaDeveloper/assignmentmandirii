// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'movie_genre_freezed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MovieGenreTearOff {
  const _$MovieGenreTearOff();

  _MovieGenre call(
      {int page = 1,
      List<MovieGenreModel> list = const [],
      bool isLoading = true,
      bool isLoadMoreError = false,
      bool isLoadMoreDone = false}) {
    return _MovieGenre(
      page: page,
      list: list,
      isLoading: isLoading,
      isLoadMoreError: isLoadMoreError,
      isLoadMoreDone: isLoadMoreDone,
    );
  }
}

/// @nodoc
const $MovieGenre = _$MovieGenreTearOff();

/// @nodoc
mixin _$MovieGenre {
  int get page => throw _privateConstructorUsedError;
  List<MovieGenreModel> get list => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadMoreError => throw _privateConstructorUsedError;
  bool get isLoadMoreDone => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieGenreCopyWith<MovieGenre> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieGenreCopyWith<$Res> {
  factory $MovieGenreCopyWith(
          MovieGenre value, $Res Function(MovieGenre) then) =
      _$MovieGenreCopyWithImpl<$Res>;
  $Res call(
      {int page,
      List<MovieGenreModel> list,
      bool isLoading,
      bool isLoadMoreError,
      bool isLoadMoreDone});
}

/// @nodoc
class _$MovieGenreCopyWithImpl<$Res> implements $MovieGenreCopyWith<$Res> {
  _$MovieGenreCopyWithImpl(this._value, this._then);

  final MovieGenre _value;
  // ignore: unused_field
  final $Res Function(MovieGenre) _then;

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
              as List<MovieGenreModel>,
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
abstract class _$MovieGenreCopyWith<$Res> implements $MovieGenreCopyWith<$Res> {
  factory _$MovieGenreCopyWith(
          _MovieGenre value, $Res Function(_MovieGenre) then) =
      __$MovieGenreCopyWithImpl<$Res>;
  @override
  $Res call(
      {int page,
      List<MovieGenreModel> list,
      bool isLoading,
      bool isLoadMoreError,
      bool isLoadMoreDone});
}

/// @nodoc
class __$MovieGenreCopyWithImpl<$Res> extends _$MovieGenreCopyWithImpl<$Res>
    implements _$MovieGenreCopyWith<$Res> {
  __$MovieGenreCopyWithImpl(
      _MovieGenre _value, $Res Function(_MovieGenre) _then)
      : super(_value, (v) => _then(v as _MovieGenre));

  @override
  _MovieGenre get _value => super._value as _MovieGenre;

  @override
  $Res call({
    Object? page = freezed,
    Object? list = freezed,
    Object? isLoading = freezed,
    Object? isLoadMoreError = freezed,
    Object? isLoadMoreDone = freezed,
  }) {
    return _then(_MovieGenre(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<MovieGenreModel>,
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

class _$_MovieGenre extends _MovieGenre with DiagnosticableTreeMixin {
  const _$_MovieGenre(
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
  final List<MovieGenreModel> list;
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MovieGenre(page: $page, list: $list, isLoading: $isLoading, isLoadMoreError: $isLoadMoreError, isLoadMoreDone: $isLoadMoreDone)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MovieGenre'))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('list', list))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isLoadMoreError', isLoadMoreError))
      ..add(DiagnosticsProperty('isLoadMoreDone', isLoadMoreDone));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieGenre &&
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
  _$MovieGenreCopyWith<_MovieGenre> get copyWith =>
      __$MovieGenreCopyWithImpl<_MovieGenre>(this, _$identity);
}

abstract class _MovieGenre extends MovieGenre {
  const factory _MovieGenre(
      {int page,
      List<MovieGenreModel> list,
      bool isLoading,
      bool isLoadMoreError,
      bool isLoadMoreDone}) = _$_MovieGenre;
  const _MovieGenre._() : super._();

  @override
  int get page => throw _privateConstructorUsedError;
  @override
  List<MovieGenreModel> get list => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isLoadMoreError => throw _privateConstructorUsedError;
  @override
  bool get isLoadMoreDone => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MovieGenreCopyWith<_MovieGenre> get copyWith =>
      throw _privateConstructorUsedError;
}
