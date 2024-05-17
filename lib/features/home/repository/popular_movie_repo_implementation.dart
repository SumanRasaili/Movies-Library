import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/config/config.dart';
import 'package:tmdbapp/core/dio_service.dart';
import 'package:tmdbapp/core/dio_service_implementation.dart';
import 'package:tmdbapp/features/home/models/now_playing_model.dart';
import 'package:tmdbapp/features/home/repository/popular_movies_repo.dart';

final popularMovieRepoImplProvider = Provider((ref) {
  return PopularMoviesRepoImplementation(
      dioService: ref.read(dioServiceProvider));
});

class PopularMoviesRepoImplementation implements PopularMoviesRepo {
  DioService dioService;
  PopularMoviesRepoImplementation({required this.dioService});
  @override
  Future<NowPlayingModel> getPopularMovies() async {
    final response = await dioService.getResponse(
      endpoint: AppConstants.baseUrl + path,
    );
    return NowPlayingModel.fromJson(response.data);
  }

  @override
  String get path => "/movie/popular";
}
