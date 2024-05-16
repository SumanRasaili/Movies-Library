import 'package:tmdbapp/features/home/models/similar_movie_model.dart';

abstract class SimilarRepo{
  String path({required String movieId});
  Future<SimilarMovieModel> getsimilarMovies({required String movieId});
}