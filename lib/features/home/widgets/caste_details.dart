import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/config/app_constants.dart';
import 'package:tmdbapp/features/home/models/caste_details_model.dart';
import 'package:tmdbapp/features/home/providers/caste_details_provider.dart';

class CasteDetails extends ConsumerWidget {
  final String movieId;
  const CasteDetails({super.key, required this.movieId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final casteProv = ref.watch(getCasteDetailsProvider(movieId: movieId));
    return casteProv.when(data: (casteData) {
      return SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text("Casting Crews"),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: casteData.cast.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: CastWidget(casteData.cast[index]),
                  );
                },
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
            Text("Error Occured $stackTrace"),
          ],
        ),
      );
    }, loading: () {
      return const Center(
        child: CircularProgressIndicator(),
      );
    });
  }
}

class CastWidget extends StatelessWidget {
  final Cast cast;
  const CastWidget(this.cast, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: cast.profilePath == null
              ? Text(
                  cast.name[0].toUpperCase(),
                  style: Theme.of(context).textTheme.headlineMedium,
                )
              : CachedNetworkImage(
                  fit: BoxFit.fill,
                  height: 50,
                  errorWidget: (context, url, error) {
                    return Text(
                      cast.name[0].toUpperCase(),
                      style: Theme.of(context).textTheme.headlineMedium,
                    );
                  },
                  imageUrl: AppConstants.imageBaseUrl + cast.profilePath!),
        ),
        Text(cast.name),
        cast.character == null ? const SizedBox() : const Text('As'),
        cast.character == null
            ? const SizedBox()
            : Text(
                cast.character!,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(fontStyle: FontStyle.italic),
              ),
      ],
    );
  }
}
