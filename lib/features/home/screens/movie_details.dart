import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/config/app_constants.dart';
import 'package:tmdbapp/features/home/models/movie_details_response.dart';
import 'package:tmdbapp/features/home/providers/movie_details_provider.dart';
import 'package:tmdbapp/features/home/widgets/caste_details.dart';

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
      // physics: const NeverScrollableScrollPhysics(),
      slivers: [
        SliverList(
            delegate: SliverChildListDelegate([
          prov.when(data: (movieData) {
            print("Movie detail is ${movieData.title}");
            return SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Stack(
                // fit: StackFit.loose,
                children: [
                  Positioned(
                    height: MediaQuery.of(context).size.height * .40,
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
                    // bottom: 5,
                    top: MediaQuery.of(context).size.height * 0.40,
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          // color: Colors.grey,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15))),
                      // width: constraints.maxWidth,
                      height: MediaQuery.of(context).size.height,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                for (var cont in movieData.originCountry)
                                  Text(
                                      "${movieData.status} (${movieData.originalLanguage} $cont)"),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text("${movieData.runtime} min"),
                              ],
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Wrap(
                              spacing: 5,
                              runSpacing: 5.0,
                              children: [
                                for (var genre in movieData.genres)
                                  GenreWidget(genre)
                              ],
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Row(
                              children: [
                                const Text(
                                  "Budget : ",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text("\$${movieData.budget}"),
                              ],
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Row(
                              children: [
                                const Text(
                                  "Earning : ",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text("\$${movieData.revenue}"),
                              ],
                            ),
                            const Divider(),
                            const Text(
                              "Overview : ",
                              style: TextStyle(fontSize: 15),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text(
                              movieData.overview,
                              style: TextStyle(
                                  fontSize: 12, color: Colors.grey.shade800),
                            ),
                            const Divider(),
                            Production(movieData.productionCompanies),
                            const Divider(),
                            CasteDetails(movieId: movieId)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }, error: (error, stackTrace) {
            return SafeArea(
              child: Center(
                child: Column(
                  children: [
                    Text("Error Occured $error"),
                    Text("Error Stack Trace $stackTrace"),
                  ],
                ),
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

class GenreWidget extends StatelessWidget {
  final Genre genre;
  const GenreWidget(this.genre, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Theme.of(context).primaryColor.withOpacity(0.3)),
      child: Text(
        genre.name.toUpperCase(),
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}

class Production extends StatelessWidget {
  final List<ProductionCompany> productionCompanies;
  const Production(this.productionCompanies, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Production',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 80,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              for (var each in productionCompanies)
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: ProducerWidget(each),
                )
            ],
          ),
        ),
      ],
    );
  }
}

class ProducerWidget extends StatelessWidget {
  final ProductionCompany productionCompany;
  const ProducerWidget(this.productionCompany, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        productionCompany.logoPath == null
            ? Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: Text(
                  productionCompany.name[0].toUpperCase(),
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              )
            : Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(AppConstants.imageBaseUrl +
                            productionCompany.logoPath!))),
              ),
        Text(
          productionCompany.name,
          style: Theme.of(context).textTheme.bodySmall,
        )
      ],
    );
  }
}
