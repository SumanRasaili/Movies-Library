// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/config/app_constants.dart';
import 'package:tmdbapp/features/home/models/now_playing_model.dart';

class CardWidget extends ConsumerWidget {
  final Result model;
  final VoidCallback onPressed;
  const CardWidget({
    super.key,
    required this.model,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
          margin: const EdgeInsets.all(5),
          clipBehavior: Clip.hardEdge,
          child: model.backdropPath != null
              ? Column(
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    CachedNetworkImage(
                      fit: BoxFit.cover,
                      height: 150,
                      width: 200,
                      imageUrl: AppConstants.imageBaseUrl + model.backdropPath!,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      width:
                          200, // Ensure the width is consistent with the image
                      child: Text(
                        model.title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 17,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),
                  ],
                )
              : Column(
                  children: [
                    Container(
                        height: 150,
                        width: 200,
                        // width: 150,
                        decoration: const BoxDecoration(),
                        child: Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg",
                          fit: BoxFit.cover,
                        )),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      width:
                          200, // Ensure the width is consistent with the image
                      child: Text(
                        model.title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 17,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),
                  ],
                )),
    );
  }
}
