import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/config/app_constants.dart';
import 'package:tmdbapp/core/dio_service.dart';
import 'package:tmdbapp/core/dio_service_implementation.dart';
import 'package:tmdbapp/features/home/models/now_playing_model.dart';
import 'package:tmdbapp/features/home/repository/search_movie_repository.dart';

final searchRepoImplProvider = Provider((ref) {
  return SerachMovieRepoImplementation(
      dioService: ref.read(dioServiceProvider));
});

class SerachMovieRepoImplementation implements SerachMovieRepo {
  DioService dioService;
  SerachMovieRepoImplementation({required this.dioService});
  @override
  Future<NowPlayingModel> getSearchData(String? searchQuery) async {
    final responseData = await dioService.getResponse(
        endpoint: AppConstants.baseUrl + path,
        queryParameters: {if (searchQuery != null) "query": searchQuery});
    return NowPlayingModel.fromJson(responseData.data);
  }

  @override
  String get path => "/search/movie";
}
