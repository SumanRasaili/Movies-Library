import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/features/home/models/top_rated_model_state.dart';
import 'package:tmdbapp/features/home/repository/top_rated_repo_implementation.dart';

final getAllTopRatedProvider =
    StateNotifierProvider<GetAllTopRatedNotifier, TopRatedModelState>((ref) {
  return GetAllTopRatedNotifier(ref: ref);
});

class GetAllTopRatedNotifier extends StateNotifier<TopRatedModelState> {
  GetAllTopRatedNotifier({required this.ref})
      : super(const TopRatedModelState()) {
    getData(null);
  }
  Ref ref;

  bool paginationNotification(ScrollNotification notification) {
    if (notification.metrics.pixels == notification.metrics.maxScrollExtent) {
      if (!state.isPaginationLoading) {
        state = state.copyWith(isPaginationLoading: true);
        getData(state.page + 1);
      }
    }
    return true;
  }

  getData(int? page) async {
    state = state.copyWith(isLoading: true);
    final resp =
        await ref.read(topRatedRepoImplProvider).getAllTopRatedMovies(null);
    if (page == null) {
      state = state.copyWith(
          isLoading: true, page: resp.page, results: resp.results);

      state = state.copyWith(isLoading: false);
    } else {
      final pagiResp =
          await ref.read(topRatedRepoImplProvider).getAllTopRatedMovies(page);
      state = state.copyWith(
          page: pagiResp.page,
          results: [...state.results, ...pagiResp.results],
          isPaginationLoading: true);

      state = state.copyWith(isPaginationLoading: false);
    }
  }
}
