// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/config/app_constants.dart';
import 'package:tmdbapp/features/home/models/now_playing_model.dart';
import 'package:tmdbapp/features/home/models/similar_movie_model.dart';

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
          margin: const EdgeInsets.all(10),
          clipBehavior: Clip.hardEdge,
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            children: [
              model.backdropPath == null
                  ? Container(
                      height: 150,
                      // width: 150,
                      decoration: const BoxDecoration(),
                      child: Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg"))
                  : CachedNetworkImage(
                      fit: BoxFit.cover,
                      height: 150,
                      width: 200,
                      imageUrl: AppConstants.imageBaseUrl + model.backdropPath!,
                    ),
              Expanded(
                child: Text(
                  model.title ?? "-",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                      fontSize: 17,
                      color: Theme.of(context).colorScheme.primary),
                ),
              ),
            ],
          )),
    );
  }
}
