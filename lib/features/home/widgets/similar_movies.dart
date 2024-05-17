import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/features/home/providers/similar_movies_provider.dart';
import 'package:tmdbapp/features/home/screens/movie_details.dart';
import 'package:tmdbapp/features/home/widgets/card_widget.dart';

class SimilarMoviesWidget extends ConsumerWidget {
  final String movieId;
  const SimilarMoviesWidget({required this.movieId, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final simialrMovies =
        ref.watch(GetAllSimilarMoviesProvider(movieId: movieId));
    return simialrMovies.when(data: (similarData) {
      return SizedBox(
        height: 200,
        // width: 200,
        child: ListView.builder(
          // physics: const NeverScrollableScrollPhysics(),
          itemCount: similarData.results.length,
          // shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CardWidget(
                onPressed: () {
                  context.push(MovieDetailsScreen.routename,
                      extra: similarData.results[index].id.toString());
                },
                model: similarData.results[index]);
          },
        ),
      );
    }, error: (error, stackTrace) {
      return Center(
        child: Text("Error Occured $error"),
      );
    }, loading: () {
      return const Center(
        child: CircularProgressIndicator(),
      );
    });
  }
}
