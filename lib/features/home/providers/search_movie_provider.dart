import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/features/home/models/search_movies_state.dart';
import 'package:tmdbapp/features/home/repository/search_moview_repo_impl.dart';

final searchProvider =
    StateNotifierProvider<SearchMovieNotifier, SearchMovieState>((ref) {
  return SearchMovieNotifier(ref: ref);
});

class SearchMovieNotifier extends StateNotifier<SearchMovieState> {
  SearchMovieNotifier({required this.ref}) : super(const SearchMovieState()) {
    getData(searchQuery: null);
  }
  Ref ref;

  getData({required String? searchQuery}) async {
    final resp =
        await ref.read(searchRepoImplProvider).getSearchData(searchQuery);
    state = state.copyWith(searchResultsList: resp.results);
  }
}
