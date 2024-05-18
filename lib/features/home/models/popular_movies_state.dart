import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tmdbapp/features/home/models/now_playing_model.dart';

part 'popular_movies_state.freezed.dart';

@freezed
class PopularMoviesState with _$PopularMoviesState {
  const factory PopularMoviesState({
    @Default(1) int page,
    @Default([]) List<Result> results,
    @Default(0) int totalPages,
    @Default(0) int totalResults,
    @Default(false) bool isLoading,
    @Default(false) bool isPaginationLoading,
  }) = _PopularMoviesState;
}
