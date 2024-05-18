// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_rated_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TopRatedModelState {
  int get page => throw _privateConstructorUsedError;
  List<Result> get results => throw _privateConstructorUsedError;
  bool get isPaginationLoading => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopRatedModelStateCopyWith<TopRatedModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopRatedModelStateCopyWith<$Res> {
  factory $TopRatedModelStateCopyWith(
          TopRatedModelState value, $Res Function(TopRatedModelState) then) =
      _$TopRatedModelStateCopyWithImpl<$Res, TopRatedModelState>;
  @useResult
  $Res call(
      {int page,
      List<Result> results,
      bool isPaginationLoading,
      bool isLoading});
}

/// @nodoc
class _$TopRatedModelStateCopyWithImpl<$Res, $Val extends TopRatedModelState>
    implements $TopRatedModelStateCopyWith<$Res> {
  _$TopRatedModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
    Object? isPaginationLoading = null,
    Object? isLoading = null,
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
      isPaginationLoading: null == isPaginationLoading
          ? _value.isPaginationLoading
          : isPaginationLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopRatedModelStateImplCopyWith<$Res>
    implements $TopRatedModelStateCopyWith<$Res> {
  factory _$$TopRatedModelStateImplCopyWith(_$TopRatedModelStateImpl value,
          $Res Function(_$TopRatedModelStateImpl) then) =
      __$$TopRatedModelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      List<Result> results,
      bool isPaginationLoading,
      bool isLoading});
}

/// @nodoc
class __$$TopRatedModelStateImplCopyWithImpl<$Res>
    extends _$TopRatedModelStateCopyWithImpl<$Res, _$TopRatedModelStateImpl>
    implements _$$TopRatedModelStateImplCopyWith<$Res> {
  __$$TopRatedModelStateImplCopyWithImpl(_$TopRatedModelStateImpl _value,
      $Res Function(_$TopRatedModelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
    Object? isPaginationLoading = null,
    Object? isLoading = null,
  }) {
    return _then(_$TopRatedModelStateImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      isPaginationLoading: null == isPaginationLoading
          ? _value.isPaginationLoading
          : isPaginationLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TopRatedModelStateImpl implements _TopRatedModelState {
  const _$TopRatedModelStateImpl(
      {this.page = 1,
      final List<Result> results = const [],
      this.isPaginationLoading = false,
      this.isLoading = false})
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
  final bool isPaginationLoading;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'TopRatedModelState(page: $page, results: $results, isPaginationLoading: $isPaginationLoading, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopRatedModelStateImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.isPaginationLoading, isPaginationLoading) ||
                other.isPaginationLoading == isPaginationLoading) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      page,
      const DeepCollectionEquality().hash(_results),
      isPaginationLoading,
      isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopRatedModelStateImplCopyWith<_$TopRatedModelStateImpl> get copyWith =>
      __$$TopRatedModelStateImplCopyWithImpl<_$TopRatedModelStateImpl>(
          this, _$identity);
}

abstract class _TopRatedModelState implements TopRatedModelState {
  const factory _TopRatedModelState(
      {final int page,
      final List<Result> results,
      final bool isPaginationLoading,
      final bool isLoading}) = _$TopRatedModelStateImpl;

  @override
  int get page;
  @override
  List<Result> get results;
  @override
  bool get isPaginationLoading;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$TopRatedModelStateImplCopyWith<_$TopRatedModelStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
