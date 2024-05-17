import 'package:tmdbapp/features/home/models/now_playing_model.dart';

abstract class SimilarRepo{
  String path({required String movieId});
  Future<NowPlayingModel> getsimilarMovies({required String movieId});
}