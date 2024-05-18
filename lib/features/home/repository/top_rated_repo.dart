import 'package:tmdbapp/features/home/models/now_playing_model.dart';

abstract class TopRatedMoviesRepo {
  String get  path;
  Future<NowPlayingModel> getAllTopRatedMovies(int? page);
}