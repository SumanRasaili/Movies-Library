import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/features/home/providers/popular_movies_provider.dart';
import 'package:tmdbapp/features/home/screens/movie_details.dart';
import 'package:tmdbapp/features/home/widgets/card_widget.dart';

class AllPopularMovies extends ConsumerWidget {
  static const String routename = "/all-popular-movies";
  static route() => GoRoute(
        path: routename,
        builder: (context, state) => const AllPopularMovies(),
      );
  const AllPopularMovies({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final popularMovies = ref.watch(popularMoviesProvider);
    return Scaffold(
      body: NotificationListener<ScrollEndNotification>(
        onNotification: ref.read(popularMoviesProvider.notifier).pageNotify,
        child: CustomScrollView(
          slivers: [
            const SliverAppBar(
              title: Text("All Popular Movies"),
              elevation: 2,
              // forceElevated: true,
              floating: true,
              pinned: true,
            ),
            SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 250,
                childAspectRatio: 0.96,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                // childAspectRatio: ,
              ),
              itemCount: popularMovies.results.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: CardWidget(
                      model: popularMovies.results[index],
                      onPressed: () {
                        context.push(MovieDetailsScreen.routename,
                            extra: popularMovies.results[index].id.toString());
                      }),
                );
              },
            ),
            if (popularMovies.isPaginationLoading) ...{
              const SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()),
              ),
            }
          ],
        ),
      ),
    );
  }
}
