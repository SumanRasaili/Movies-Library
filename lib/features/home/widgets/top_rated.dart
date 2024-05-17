import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/features/home/providers/top_rated_provider.dart';
import 'package:tmdbapp/features/home/screens/movie_details.dart';
import 'package:tmdbapp/features/home/widgets/card_widget.dart';

class TopRatedMovies extends ConsumerWidget {
  const TopRatedMovies({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final topRatedList = ref.read(getAllTopRatedProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Top Rated Movies",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            itemCount: (topRatedList.results.length < 5)
                ? topRatedList.results.length
                : 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CardWidget(
                  model: topRatedList.results[index],
                  onPressed: () {
                    context.push(MovieDetailsScreen.routename,
                        extra: topRatedList.results[index].id.toString());
                  });
            },
          ),
        )
      ],
    );
  }
}