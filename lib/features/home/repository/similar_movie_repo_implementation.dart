import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/config/config.dart';
import 'package:tmdbapp/core/dio_service.dart';
import 'package:tmdbapp/core/dio_service_implementation.dart';
import 'package:tmdbapp/features/home/models/similar_movie_model.dart';
import 'package:tmdbapp/features/home/repository/similar_movies_repo.dart';

final similarMovieRepoImplProvider = Provider<SimilarRepo>((ref) {
  return SimilarRepoImplementation(dioService: ref.read(dioServiceProvider));
});

class SimilarRepoImplementation implements SimilarRepo {
  DioService dioService;
  SimilarRepoImplementation({required this.dioService});
  @override
  Future<SimilarMovieModel> getsimilarMovies({required String movieId}) async {
    final responseData = await dioService.getResponse(
        endpoint: AppConstants.baseUrl + path(movieId: movieId));
    return SimilarMovieModel.fromJson(responseData.data);
  }

  @override
  String path({required String movieId}) {
    return "/movie/$movieId/similar";
  }
}
