import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/features/home/screens/now_playing.dart';

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
                      decoration: const InputDecoration(
                          suffixIcon: Icon(
                            Icons.search,
                            size: 25,
                          ),
                          hintText: "Search here",
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
                    const Text(
                      "Movies",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        // shrinkWrap: true,
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return SizedBox(
                            width: 170,
                            child: Card(
                                margin: const EdgeInsets.all(10),
                                clipBehavior: Clip.hardEdge,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CachedNetworkImage(
                                        fit: BoxFit.cover,
                                        height: 150,
                                        imageUrl:
                                            "https://h5p.org/sites/default/files/h5p/content/1209180/images/file-6113d5f8845dc.jpeg"),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "Bad Ass",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary),
                                    ),
                                  ],
                                )),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "TV Shows",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        // physics: const NeverScrollableScrollPhysics(),
                        // shrinkWrap: true,
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return SizedBox(
                            width: 170,
                            child: Card(
                                margin: const EdgeInsets.all(10),
                                clipBehavior: Clip.hardEdge,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CachedNetworkImage(
                                        fit: BoxFit.cover,
                                        height: 150,
                                        imageUrl:
                                            "https://h5p.org/sites/default/files/h5p/content/1209180/images/file-6113d5f8845dc.jpeg"),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "Bad Ass",
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary),
                                    ),
                                  ],
                                )),
                          );
                        },
                      ),
                    ),
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
