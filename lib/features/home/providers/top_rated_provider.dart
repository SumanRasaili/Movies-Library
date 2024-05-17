import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/features/home/models/now_playing_model.dart';
import 'package:tmdbapp/features/home/repository/top_rated_repo_implementation.dart';

final getAllTopRatedProvider =
    StateNotifierProvider<GetAllTopRatedNotifier, NowPlayingModel>((ref) {
  return GetAllTopRatedNotifier(ref: ref);
});

class GetAllTopRatedNotifier extends StateNotifier<NowPlayingModel> {
  GetAllTopRatedNotifier({required this.ref})
      : super(const NowPlayingModel(
            page: 1, results: [], totalPages: 0, totalResults: 0)) {
    getData();
  }
  Ref ref;
  bool isloading = false;

  getData() async {
    isloading = true;
    final d = await ref.read(topRatedRepoImplProvider).getAllTopRatedMovies();
    state = d;
    isloading = false;
  }
}
