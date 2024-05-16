import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/config/config.dart';
import 'package:tmdbapp/core/dio_service.dart';
import 'package:tmdbapp/core/dio_service_implementation.dart';
import 'package:tmdbapp/features/home/models/now_playing_model.dart';
import 'package:tmdbapp/features/home/repository/now_playing_repo.dart';

final nowPlayingRepositoryProvider = Provider<NowPlayingRepository>((ref) {
  return NowPlayingRepositoryImplementation(
      dioService: ref.read(dioServiceProvider));
});

class NowPlayingRepositoryImplementation implements NowPlayingRepository {
  DioService dioService;
  NowPlayingRepositoryImplementation({required this.dioService});
  @override
  Future<NowPlayingModel> getNowPlaying() async {
    final responseData = await dioService.getResponse(
      endpoint: AppConstants.baseUrl + path,
    );
    print("The responseddd ==== ${responseData.data}");
    return NowPlayingModel.fromJson(responseData.data);
  }

  @override
  String get path => "/movie/now_playing";
}
