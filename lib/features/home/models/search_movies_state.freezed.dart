// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_movies_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchMovieState {
  int get page => throw _privateConstructorUsedError;
  List<Result> get searchResultsList => throw _privateConstructorUsedError;
  dynamic get isPaginationLoading => throw _privateConstructorUsedError;
  dynamic get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchMovieStateCopyWith<SearchMovieState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchMovieStateCopyWith<$Res> {
  factory $SearchMovieStateCopyWith(
          SearchMovieState value, $Res Function(SearchMovieState) then) =
      _$SearchMovieStateCopyWithImpl<$Res, SearchMovieState>;
  @useResult
  $Res call(
      {int page,
      List<Result> searchResultsList,
      dynamic isPaginationLoading,
      dynamic isLoading});
}

/// @nodoc
class _$SearchMovieStateCopyWithImpl<$Res, $Val extends SearchMovieState>
    implements $SearchMovieStateCopyWith<$Res> {
  _$SearchMovieStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? searchResultsList = null,
    Object? isPaginationLoading = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      searchResultsList: null == searchResultsList
          ? _value.searchResultsList
          : searchResultsList // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      isPaginationLoading: freezed == isPaginationLoading
          ? _value.isPaginationLoading
          : isPaginationLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchMovieStateImplCopyWith<$Res>
    implements $SearchMovieStateCopyWith<$Res> {
  factory _$$SearchMovieStateImplCopyWith(_$SearchMovieStateImpl value,
          $Res Function(_$SearchMovieStateImpl) then) =
      __$$SearchMovieStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      List<Result> searchResultsList,
      dynamic isPaginationLoading,
      dynamic isLoading});
}

/// @nodoc
class __$$SearchMovieStateImplCopyWithImpl<$Res>
    extends _$SearchMovieStateCopyWithImpl<$Res, _$SearchMovieStateImpl>
    implements _$$SearchMovieStateImplCopyWith<$Res> {
  __$$SearchMovieStateImplCopyWithImpl(_$SearchMovieStateImpl _value,
      $Res Function(_$SearchMovieStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? searchResultsList = null,
    Object? isPaginationLoading = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_$SearchMovieStateImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      searchResultsList: null == searchResultsList
          ? _value._searchResultsList
          : searchResultsList // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      isPaginationLoading: freezed == isPaginationLoading
          ? _value.isPaginationLoading!
          : isPaginationLoading,
      isLoading: freezed == isLoading ? _value.isLoading! : isLoading,
    ));
  }
}

/// @nodoc

class _$SearchMovieStateImpl implements _SearchMovieState {
  const _$SearchMovieStateImpl(
      {this.page = 1,
      final List<Result> searchResultsList = const [],
      this.isPaginationLoading = false,
      this.isLoading = false})
      : _searchResultsList = searchResultsList;

  @override
  @JsonKey()
  final int page;
  final List<Result> _searchResultsList;
  @override
  @JsonKey()
  List<Result> get searchResultsList {
    if (_searchResultsList is EqualUnmodifiableListView)
      return _searchResultsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResultsList);
  }

  @override
  @JsonKey()
  final dynamic isPaginationLoading;
  @override
  @JsonKey()
  final dynamic isLoading;

  @override
  String toString() {
    return 'SearchMovieState(page: $page, searchResultsList: $searchResultsList, isPaginationLoading: $isPaginationLoading, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchMovieStateImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality()
                .equals(other._searchResultsList, _searchResultsList) &&
            const DeepCollectionEquality()
                .equals(other.isPaginationLoading, isPaginationLoading) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      page,
      const DeepCollectionEquality().hash(_searchResultsList),
      const DeepCollectionEquality().hash(isPaginationLoading),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchMovieStateImplCopyWith<_$SearchMovieStateImpl> get copyWith =>
      __$$SearchMovieStateImplCopyWithImpl<_$SearchMovieStateImpl>(
          this, _$identity);
}

abstract class _SearchMovieState implements SearchMovieState {
  const factory _SearchMovieState(
      {final int page,
      final List<Result> searchResultsList,
      final dynamic isPaginationLoading,
      final dynamic isLoading}) = _$SearchMovieStateImpl;

  @override
  int get page;
  @override
  List<Result> get searchResultsList;
  @override
  dynamic get isPaginationLoading;
  @override
  dynamic get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$SearchMovieStateImplCopyWith<_$SearchMovieStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
