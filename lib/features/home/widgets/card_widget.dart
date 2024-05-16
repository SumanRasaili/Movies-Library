import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/features/home/models/similar_movie_model.dart';

class CardWidget extends ConsumerWidget {
  final Result model;
  const CardWidget({required this.model, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
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
                        imageUrl: model.backdropPath??""),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      model.title??"-",
                      style: TextStyle(
                          fontSize: 17,
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  ],
                )),
          );
        },
      ),
    );
  }
}
