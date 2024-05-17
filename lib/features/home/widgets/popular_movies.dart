import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/features/home/providers/popular_movies_provider.dart';
import 'package:tmdbapp/features/home/widgets/card_widget.dart';

class PopularMovies extends ConsumerWidget {
  const PopularMovies({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final popularList = ref.read(popularMoviesProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Popular Movies",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 200,
          child: ListView.builder(
            itemCount: popularList.results.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CardWidget(
                  model: popularList.results[index], onPressed: () {});
            },
          ),
        )
      ],
    );
  }
}
