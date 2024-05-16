import 'package:tmdbapp/features/home/models/movie_details_response.dart';

abstract class MovieDetailsRepo {
  String  path({required String movieId});
  Future<MovieDetails> getMovieDetails({required String movieId});
}
