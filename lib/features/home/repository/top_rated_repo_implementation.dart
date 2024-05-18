import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/config/app_constants.dart';
import 'package:tmdbapp/core/dio_service.dart';
import 'package:tmdbapp/core/dio_service_implementation.dart';
import 'package:tmdbapp/features/home/models/now_playing_model.dart';
import 'package:tmdbapp/features/home/repository/top_rated_repo.dart';

final topRatedRepoImplProvider = Provider<TopRatedMoviesRepo>((ref) {
  return TopRatedRepoImplementation(dioService: ref.read(dioServiceProvider));
});

class TopRatedRepoImplementation implements TopRatedMoviesRepo {
  DioService dioService;
  TopRatedRepoImplementation({required this.dioService});
  @override
  Future<NowPlayingModel> getAllTopRatedMovies(int? page) async {
    final response = await dioService.getResponse(
        endpoint: AppConstants.baseUrl + path,
        queryParameters: {if (page != null) "page": page});
    print("paginated or not paginated reponse is ${response.realUri}  ");
    return NowPlayingModel.fromJson(response.data);
  }

  @override
  String get path => "/movie/top_rated";
}
