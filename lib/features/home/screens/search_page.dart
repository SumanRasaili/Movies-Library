import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/features/home/providers/search_movie_provider.dart';
import 'package:tmdbapp/features/home/screens/movie_details.dart';
import 'package:tmdbapp/features/home/widgets/card_widget.dart';

class SearchPage extends HookConsumerWidget {
  static const routeName = "/search-page";
  static route() => GoRoute(
        path: routeName,
        builder: (context, state) => const SearchPage(),
      );
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textEditingController = useTextEditingController();
    final searchProv = ref.watch(searchProvider);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leadingWidth: 25,
            title: TextFormField(
              controller: textEditingController,
              onChanged: (value) {
                ref.read(searchProvider.notifier).getData(searchQuery: value);
              },
              onFieldSubmitted: (value) {
                ref.read(searchProvider.notifier).getData(searchQuery: value);
              },
              decoration: const InputDecoration(
                  suffixIcon: Icon(
                    Icons.search,
                    size: 25,
                  ),
                  hintText: "Search here",
                  isDense: true,
                  contentPadding: EdgeInsets.fromLTRB(12, 11, 12, 11),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)))),
            ),
          ),
          SliverGrid.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 250,
              childAspectRatio: 0.96,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              // childAspectRatio: ,
            ),
            itemCount: searchProv.searchResultsList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: CardWidget(
                    model: searchProv.searchResultsList[index],
                    onPressed: () {
                      context.push(MovieDetailsScreen.routename,
                          extra: searchProv.searchResultsList[index].id
                              .toString());
                    }),
              );
            },
          ),
        ],
      ),
    );
  }
}
