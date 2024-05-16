import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tmdbapp/features/home/models/movie_details_response.dart';
import 'package:tmdbapp/features/home/repository/movie_details_repo_implementation.dart';

part 'movie_details_provider.g.dart';

@riverpod
Future<MovieDetails> getAllMovieDetails(GetAllMovieDetailsRef ref,
    {required String movieId}) {
  return ref.read(getMovieRepositoryProvider).getMovieDetails(movieId: movieId);
}
