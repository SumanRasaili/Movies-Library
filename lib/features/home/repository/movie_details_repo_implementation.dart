import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/config/config.dart';
import 'package:tmdbapp/core/dio_service.dart';
import 'package:tmdbapp/core/dio_service_implementation.dart';
import 'package:tmdbapp/features/home/models/movie_details_response.dart';
import 'package:tmdbapp/features/home/repository/movie_details_repo.dart';

final getMovieRepositoryProvider = Provider<MovieDetailsRepo>((ref) {
  return MovieDetailsRepoImplementation(
      dioService: ref.read(dioServiceProvider));
});

class MovieDetailsRepoImplementation implements MovieDetailsRepo {
  DioService dioService;
  MovieDetailsRepoImplementation({required this.dioService});
  @override
  Future<MovieDetails> getMovieDetails({required String movieId}) async {
    final responseData = await dioService.getResponse(
        endpoint: AppConstants.baseUrl + path(movieId: movieId));
    print("detail is ${responseData.data}");
    print("detail is ${responseData.data.runtimeType}");
    return MovieDetails.fromJson(responseData.data);
  }

  @override
  String path({required String movieId}) {
    return "/movie/$movieId";
  }
}
