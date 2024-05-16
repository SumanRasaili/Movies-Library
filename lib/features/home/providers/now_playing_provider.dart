import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/features/home/models/now_playing_model.dart';
import 'package:tmdbapp/features/home/repository/now_playing_repo_implements.dart';

final getAllNowPlayingProvider =
    StateNotifierProvider<GetAllPlayingNotifier, List<Result>>((ref) {
  return GetAllPlayingNotifier(ref: ref);
});

class GetAllPlayingNotifier extends StateNotifier<List<Result>> {
  GetAllPlayingNotifier({required this.ref}) : super([]) {
    getData();
  }
  Ref ref;
  bool isloading = false;

  getData() async {
    isloading = true;
    final d = await ref.read(nowPlayingRepositoryProvider).getNowPlaying();
    state = d.results;
    isloading = false;
  }
}
