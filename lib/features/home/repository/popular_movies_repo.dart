import 'package:tmdbapp/features/home/models/now_playing_model.dart';

abstract class PopularMoviesRepo {
  String get path;
  Future<NowPlayingModel> getPopularMovies(int? page);
}
