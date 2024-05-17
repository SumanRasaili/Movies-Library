import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/features/home/models/now_playing_model.dart';
import 'package:tmdbapp/features/home/repository/popular_movie_repo_implementation.dart';

final popularMoviesProvider =
    StateNotifierProvider<PopularMoviesNotifier, NowPlayingModel>((ref) {
  return PopularMoviesNotifier(ref: ref);
});

class PopularMoviesNotifier extends StateNotifier<NowPlayingModel> {
  PopularMoviesNotifier({required this.ref})
      : super(const NowPlayingModel(
            page: 1, results: [], totalPages: 0, totalResults: 0)) {
    getData();
  }

  bool isLoading = false;
  Ref ref;
  getData() async {
    isLoading = true;
    final d = await ref.read(popularMovieRepoImplProvider).getPopularMovies();
    state = d;
    isLoading = false;
    print("The sttttt =========== $state");
  }
}
