// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popular_movies_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PopularMoviesState {
  int get page => throw _privateConstructorUsedError;
  List<Result> get results => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get totalResults => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isPaginationLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PopularMoviesStateCopyWith<PopularMoviesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularMoviesStateCopyWith<$Res> {
  factory $PopularMoviesStateCopyWith(
          PopularMoviesState value, $Res Function(PopularMoviesState) then) =
      _$PopularMoviesStateCopyWithImpl<$Res, PopularMoviesState>;
  @useResult
  $Res call(
      {int page,
      List<Result> results,
      int totalPages,
      int totalResults,
      bool isLoading,
      bool isPaginationLoading});
}

/// @nodoc
class _$PopularMoviesStateCopyWithImpl<$Res, $Val extends PopularMoviesState>
    implements $PopularMoviesStateCopyWith<$Res> {
  _$PopularMoviesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
    Object? totalPages = null,
    Object? totalResults = null,
    Object? isLoading = null,
    Object? isPaginationLoading = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaginationLoading: null == isPaginationLoading
          ? _value.isPaginationLoading
          : isPaginationLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PopularMoviesStateImplCopyWith<$Res>
    implements $PopularMoviesStateCopyWith<$Res> {
  factory _$$PopularMoviesStateImplCopyWith(_$PopularMoviesStateImpl value,
          $Res Function(_$PopularMoviesStateImpl) then) =
      __$$PopularMoviesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      List<Result> results,
      int totalPages,
      int totalResults,
      bool isLoading,
      bool isPaginationLoading});
}

/// @nodoc
class __$$PopularMoviesStateImplCopyWithImpl<$Res>
    extends _$PopularMoviesStateCopyWithImpl<$Res, _$PopularMoviesStateImpl>
    implements _$$PopularMoviesStateImplCopyWith<$Res> {
  __$$PopularMoviesStateImplCopyWithImpl(_$PopularMoviesStateImpl _value,
      $Res Function(_$PopularMoviesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
    Object? totalPages = null,
    Object? totalResults = null,
    Object? isLoading = null,
    Object? isPaginationLoading = null,
  }) {
    return _then(_$PopularMoviesStateImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaginationLoading: null == isPaginationLoading
          ? _value.isPaginationLoading
          : isPaginationLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PopularMoviesStateImpl implements _PopularMoviesState {
  const _$PopularMoviesStateImpl(
      {this.page = 1,
      final List<Result> results = const [],
      this.totalPages = 0,
      this.totalResults = 0,
      this.isLoading = false,
      this.isPaginationLoading = false})
      : _results = results;

  @override
  @JsonKey()
  final int page;
  final List<Result> _results;
  @override
  @JsonKey()
  List<Result> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  @JsonKey()
  final int totalPages;
  @override
  @JsonKey()
  final int totalResults;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isPaginationLoading;

  @override
  String toString() {
    return 'PopularMoviesState(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults, isLoading: $isLoading, isPaginationLoading: $isPaginationLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopularMoviesStateImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isPaginationLoading, isPaginationLoading) ||
                other.isPaginationLoading == isPaginationLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      page,
      const DeepCollectionEquality().hash(_results),
      totalPages,
      totalResults,
      isLoading,
      isPaginationLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PopularMoviesStateImplCopyWith<_$PopularMoviesStateImpl> get copyWith =>
      __$$PopularMoviesStateImplCopyWithImpl<_$PopularMoviesStateImpl>(
          this, _$identity);
}

abstract class _PopularMoviesState implements PopularMoviesState {
  const factory _PopularMoviesState(
      {final int page,
      final List<Result> results,
      final int totalPages,
      final int totalResults,
      final bool isLoading,
      final bool isPaginationLoading}) = _$PopularMoviesStateImpl;

  @override
  int get page;
  @override
  List<Result> get results;
  @override
  int get totalPages;
  @override
  int get totalResults;
  @override
  bool get isLoading;
  @override
  bool get isPaginationLoading;
  @override
  @JsonKey(ignore: true)
  _$$PopularMoviesStateImplCopyWith<_$PopularMoviesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
