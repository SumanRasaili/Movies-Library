import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tmdbapp/features/home/models/similar_movie_model.dart';
import 'package:tmdbapp/features/home/repository/similar_movie_repo_implementation.dart';
part 'similar_movies_provider.g.dart';

@riverpod
Future<SimilarMovieModel> getAllSimilarMovies(GetAllSimilarMoviesRef ref,
    {required String movieId}) {
  return ref
      .read(similarMovieRepoImplProvider)
      .getsimilarMovies(movieId: movieId);
}
