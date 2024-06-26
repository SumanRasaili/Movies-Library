import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/features/home/providers/top_rated_provider.dart';
import 'package:tmdbapp/features/home/screens/all_top_rated.dart';
import 'package:tmdbapp/features/home/screens/movie_details.dart';
import 'package:tmdbapp/features/home/widgets/card_widget.dart';

class TopRatedMovies extends ConsumerWidget {
  const TopRatedMovies({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final topRatedProv = ref.watch(getAllTopRatedProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Top Rated Movies",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            IconButton(
                onPressed: () {
                  context.push(AllTopRatedMovies.routename);
                },
                icon: const Icon(Icons.arrow_forward_ios))
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        if (topRatedProv.isLoading && topRatedProv.results.isEmpty) ...{
          const Center(
            child: CircularProgressIndicator(),
          )
        } else if (!topRatedProv.isLoading && topRatedProv.results.isEmpty) ...{
          const Center(
            child: Text("No Data"),
          )
        } else ...{
          SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: (topRatedProv.results.length < 5)
                  ? topRatedProv.results.length
                  : 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CardWidget(
                    model: topRatedProv.results[index],
                    onPressed: () {
                      context.push(MovieDetailsScreen.routename,
                          extra: topRatedProv.results[index].id.toString());
                    });
              },
            ),
          )
        }
      ],
    );
  }
}
