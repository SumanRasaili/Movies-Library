import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tmdbapp/features/home/models/now_playing_model.dart';

part 'search_movies_state.freezed.dart';

@freezed
class SearchMovieState with _$SearchMovieState {
  const factory SearchMovieState({
    @Default(1) int page,
    @Default([]) List<Result> searchResultsList,
    @Default(false) isPaginationLoading,
    @Default(false) isLoading,
  }) = _SearchMovieState;
}
