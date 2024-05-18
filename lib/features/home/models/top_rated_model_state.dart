import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tmdbapp/features/home/models/now_playing_model.dart';

part 'top_rated_model_state.freezed.dart';

@freezed
class TopRatedModelState with _$TopRatedModelState {
  const factory TopRatedModelState({
    @Default(1) int page,
    @Default([]) List<Result> results,
    @Default(false) bool isPaginationLoading,
    @Default(false) bool isLoading,
  }) = _TopRatedModelState;
}
