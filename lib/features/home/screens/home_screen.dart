import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/features/home/screens/now_playing.dart';
import 'package:tmdbapp/features/home/screens/search_page.dart';
import 'package:tmdbapp/features/home/widgets/popular_movies.dart';
import 'package:tmdbapp/features/home/widgets/top_rated.dart';

class HomeScreen extends ConsumerWidget {
  static const String routeName = "/home-screen";
  const HomeScreen({super.key});
  static GoRoute route() => GoRoute(
        path: routeName,
        builder: (context, state) => const HomeScreen(),
      );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverList(
                delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      readOnly: true,
                      onTap: () {
                        context.push(SearchPage.routeName);
                      },
                      decoration: const InputDecoration(
                          suffixIcon: Icon(
                            Icons.search,
                            size: 25,
                          ),
                          hintText: "Search movie here",
                          isDense: true,
                          contentPadding: EdgeInsets.fromLTRB(12, 11, 12, 11),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)))),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const NowplayingWidget(),
                    const SizedBox(
                      height: 15,
                    ),
                    const PopularMovies(),
                    const SizedBox(
                      height: 15,
                    ),
                    const TopRatedMovies(),
                  ],
                ),
              ),
            ]))
          ],
        ),
      ),
    );
  }
}
