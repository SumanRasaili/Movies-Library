import 'package:tmdbapp/features/home/models/now_playing_model.dart';

abstract class NowPlayingRepository {
  String get path;
  Future<NowPlayingModel> getNowPlaying();
}
