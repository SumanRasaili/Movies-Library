import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/features/home/models/popular_movies_state.dart';
import 'package:tmdbapp/features/home/repository/popular_movie_repo_implementation.dart';

final popularMoviesProvider =
    StateNotifierProvider<PopularMoviesNotifier, PopularMoviesState>((ref) {
  return PopularMoviesNotifier(ref: ref);
});

class PopularMoviesNotifier extends StateNotifier<PopularMoviesState> {
  PopularMoviesNotifier({required this.ref})
      : super(const PopularMoviesState()) {
    getData();
  }

  bool pageNotify(ScrollEndNotification notification) {
    if (notification.metrics.pixels == notification.metrics.maxScrollExtent) {
      if (state.page != 0 && (!state.isPaginationLoading)) {
        state = state.copyWith(isPaginationLoading: true);
        fetchForPagination(state.page + 1);
      }
    }
    return true;
  }

  Ref ref;
  getData() async {
    state = state.copyWith(isLoading: true);
    final d =
        await ref.read(popularMovieRepoImplProvider).getPopularMovies(null);
    state = state.copyWith(
      page: d.page,
      results: d.results,
      isLoading: true,
    );
    state = state.copyWith(isLoading: false);
  }

  fetchForPagination(int? page) async {
    final data =
        await ref.read(popularMovieRepoImplProvider).getPopularMovies(page);
    state = state.copyWith(
        page: data.page,
        results: [...state.results, ...data.results],
        isPaginationLoading: true);
    state = state.copyWith(isPaginationLoading: false);
    debugPrint("THe paginated data after pagination is ${state.results}");
  }
}
