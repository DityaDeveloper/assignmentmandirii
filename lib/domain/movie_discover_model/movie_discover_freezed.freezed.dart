// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'movie_discover_freezed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MovieDiscoverTearOff {
  const _$MovieDiscoverTearOff();

  _MovieDiscover call(
      {int page = 1,
      List<MovieModel> list = const [],
      bool isLoading = true,
      bool isLoadMoreError = false,
      bool isLoadMoreDone = false}) {
    return _MovieDiscover(
      page: page,
      list: list,
      isLoading: isLoading,
      isLoadMoreError: isLoadMoreError,
      isLoadMoreDone: isLoadMoreDone,
    );
  }
}

/// @nodoc
const $MovieDiscover = _$MovieDiscoverTearOff();

/// @nodoc
mixin _$MovieDiscover {
  int get page => throw _privateConstructorUsedError;
  List<MovieModel> get list => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadMoreError => throw _privateConstructorUsedError;
  bool get isLoadMoreDone => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieDiscoverCopyWith<MovieDiscover> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDiscoverCopyWith<$Res> {
  factory $MovieDiscoverCopyWith(
          MovieDiscover value, $Res Function(MovieDiscover) then) =
      _$MovieDiscoverCopyWithImpl<$Res>;
  $Res call(
      {int page,
      List<MovieModel> list,
      bool isLoading,
      bool isLoadMoreError,
      bool isLoadMoreDone});
}

/// @nodoc
class _$MovieDiscoverCopyWithImpl<$Res>
    implements $MovieDiscoverCopyWith<$Res> {
  _$MovieDiscoverCopyWithImpl(this._value, this._then);

  final MovieDiscover _value;
  // ignore: unused_field
  final $Res Function(MovieDiscover) _then;

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
              as List<MovieModel>,
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
abstract class _$MovieDiscoverCopyWith<$Res>
    implements $MovieDiscoverCopyWith<$Res> {
  factory _$MovieDiscoverCopyWith(
          _MovieDiscover value, $Res Function(_MovieDiscover) then) =
      __$MovieDiscoverCopyWithImpl<$Res>;
  @override
  $Res call(
      {int page,
      List<MovieModel> list,
      bool isLoading,
      bool isLoadMoreError,
      bool isLoadMoreDone});
}

/// @nodoc
class __$MovieDiscoverCopyWithImpl<$Res>
    extends _$MovieDiscoverCopyWithImpl<$Res>
    implements _$MovieDiscoverCopyWith<$Res> {
  __$MovieDiscoverCopyWithImpl(
      _MovieDiscover _value, $Res Function(_MovieDiscover) _then)
      : super(_value, (v) => _then(v as _MovieDiscover));

  @override
  _MovieDiscover get _value => super._value as _MovieDiscover;

  @override
  $Res call({
    Object? page = freezed,
    Object? list = freezed,
    Object? isLoading = freezed,
    Object? isLoadMoreError = freezed,
    Object? isLoadMoreDone = freezed,
  }) {
    return _then(_MovieDiscover(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
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

class _$_MovieDiscover extends _MovieDiscover {
  const _$_MovieDiscover(
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
  final List<MovieModel> list;
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
    return 'MovieDiscover(page: $page, list: $list, isLoading: $isLoading, isLoadMoreError: $isLoadMoreError, isLoadMoreDone: $isLoadMoreDone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieDiscover &&
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
  _$MovieDiscoverCopyWith<_MovieDiscover> get copyWith =>
      __$MovieDiscoverCopyWithImpl<_MovieDiscover>(this, _$identity);
}

abstract class _MovieDiscover extends MovieDiscover {
  const factory _MovieDiscover(
      {int page,
      List<MovieModel> list,
      bool isLoading,
      bool isLoadMoreError,
      bool isLoadMoreDone}) = _$_MovieDiscover;
  const _MovieDiscover._() : super._();

  @override
  int get page => throw _privateConstructorUsedError;
  @override
  List<MovieModel> get list => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isLoadMoreError => throw _privateConstructorUsedError;
  @override
  bool get isLoadMoreDone => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MovieDiscoverCopyWith<_MovieDiscover> get copyWith =>
      throw _privateConstructorUsedError;
}
