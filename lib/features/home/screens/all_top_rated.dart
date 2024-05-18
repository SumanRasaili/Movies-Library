import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/features/home/providers/top_rated_provider.dart';
import 'package:tmdbapp/features/home/screens/movie_details.dart';
import 'package:tmdbapp/features/home/widgets/card_widget.dart';

class AllTopRatedMovies extends ConsumerWidget {
  static const String routename = "/all-top-rated-movies";
  static route() => GoRoute(
        path: routename,
        builder: (context, state) => const AllTopRatedMovies(),
      );
  const AllTopRatedMovies({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final topratedMovies = ref.watch(getAllTopRatedProvider);
    return Scaffold(
      body: NotificationListener(
        onNotification:
            ref.read(getAllTopRatedProvider.notifier).paginationNotification,
        child: CustomScrollView(
          slivers: [
            const SliverAppBar(
              title: Text("All Top Rated Movies"),
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
              itemCount: topratedMovies.results.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: CardWidget(
                      model: topratedMovies.results[index],
                      onPressed: () {
                        context.push(MovieDetailsScreen.routename,
                            extra: topratedMovies.results[index].id.toString());
                      }),
                );
              },
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),
            if (topratedMovies.isPaginationLoading) ...{
              const SliverToBoxAdapter(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            }
          ],
        ),
      ),
    );
  }
}
