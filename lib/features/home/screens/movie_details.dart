import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/config/app_constants.dart';
import 'package:tmdbapp/features/home/providers/movie_details_provider.dart';

class MovieDetailsScreen extends ConsumerWidget {
  final String movieId;
  static const String routename = "/movie-detail-screen";

  static route() => GoRoute(
        path: routename,
        builder: (context, state) => MovieDetailsScreen(
          movieId: state.extra as String,
        ),
      );
  const MovieDetailsScreen({required this.movieId, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final prov = ref.watch(getAllMovieDetailsProvider(movieId: movieId));
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverList(
            delegate: SliverChildListDelegate([
          prov.when(data: (movieData) {
            print("Movie detail is ${movieData.title}");
            return SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Stack(
                fit: StackFit.loose,
                children: [
                  Positioned(
                    height: MediaQuery.of(context).size.height * .45,
                    child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        imageUrl:
                            AppConstants.imageBaseUrl + movieData.backdropPath),
                  ),
                  Positioned(
                      left: 10,
                      top: 15,
                      child: IconButton(
                          padding: const EdgeInsets.all(0),
                          onPressed: () {
                            context.pop();
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 30,
                          ))),
                  Positioned(
                      left: 10,
                      top: MediaQuery.of(context).size.height * .3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${movieData.title} (${movieData.releaseDate.year})",
                            style: const TextStyle(
                                overflow: TextOverflow.ellipsis,
                                color: Colors.white,
                                fontSize: 18),
                          ),
                          const SizedBox(
                            height: 1,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 15,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                movieData.voteAverage.toString(),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            movieData.tagline.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )),
                  Positioned(
                    bottom: 5,
                    top: MediaQuery.of(context).size.height * 0.4,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15))),
                      // width: constraints.maxWidth,
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                        children: [
                          Text(movieData.title),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }, error: (error, stackTrace) {
            return Center(
              child: Column(
                children: [
                  Text("Error Occured $error"),
                  Text("Error Stack Trace $stackTrace"),
                ],
              ),
            );
          }, loading: () {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          })
        ]))
      ],
    ));
  }
}
