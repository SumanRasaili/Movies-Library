import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/features/home/providers/popular_movies_provider.dart';
import 'package:tmdbapp/features/home/screens/all_popular_movies.dart';
import 'package:tmdbapp/features/home/screens/movie_details.dart';
import 'package:tmdbapp/features/home/widgets/card_widget.dart';

class PopularMovies extends ConsumerWidget {
  const PopularMovies({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final popularList = ref.watch(popularMoviesProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Popular Movies",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            IconButton(
                onPressed: () {
                  context.push(AllPopularMovies.routename);
                },
                icon: const Icon(Icons.arrow_forward_ios))
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        if (popularList.isLoading && popularList.results.isEmpty) ...{
          const Center(child: CircularProgressIndicator())
        } else if (!popularList.isLoading && popularList.results.isEmpty) ...{
          const Center(
            child: Text("No Data"),
          )
        } else ...{
          SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: (popularList.results.length < 5)
                  ? popularList.results.length
                  : 5,
              // : 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                var results = popularList.results[index];
                return CardWidget(
                    model: results,
                    onPressed: () {
                      context.push(MovieDetailsScreen.routename,
                          extra: results.id.toString());
                    });
              },
            ),
          )
        }
      ],
    );
  }
}
