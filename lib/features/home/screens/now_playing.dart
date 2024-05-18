import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tmdbapp/config/app_constants.dart';
import 'package:tmdbapp/features/home/providers/now_playing_provider.dart';
import 'package:tmdbapp/features/home/screens/movie_details.dart';

class NowplayingWidget extends HookConsumerWidget {
  const NowplayingWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final current = useState<int>(0);
    final CarouselController controller = CarouselController();

    final nowPlaying = ref.watch(getAllNowPlayingProvider.notifier);
    final nowPlayingList = ref.watch(getAllNowPlayingProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Playing Now",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 15,
        ),
        if (nowPlaying.isloading && nowPlayingList.isEmpty) ...{
          const Center(
            child: CircularProgressIndicator(),
          )
        } else if (!nowPlaying.isloading && nowPlayingList.isEmpty) ...{
          const Center(
            child: Text("No Data"),
          )
        } else if (!nowPlaying.isloading && nowPlayingList.isNotEmpty) ...{
          Column(
            children: [
              CarouselSlider.builder(
                  carouselController: controller,
                  itemCount: nowPlayingList.length,
                  itemBuilder: (context, index, realIndex) {
                    var item = nowPlayingList[index];
                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              context.push(MovieDetailsScreen.routename,
                                  extra: item.id.toString());
                            },
                            child: Stack(
                              children: <Widget>[
                                CachedNetworkImage(
                                    imageUrl: AppConstants.imageBaseUrl +
                                        item.backdropPath!),
                                Positioned(
                                  bottom: 0.0,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 6.0, bottom: 5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            "${item.title} (${item.releaseDate?.year})",
                                            maxLines: 1,
                                            style: const TextStyle(
                                              overflow: TextOverflow.ellipsis,
                                              color: Colors.white,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        // const SizedBox(
                                        //   height: 1,
                                        // ),
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
                                              item.voteAverage.toString(),
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  options: CarouselOptions(
                      disableCenter: true,
                      autoPlay: true,
                      onPageChanged: (index, reason) {
                        current.value = index;
                      },
                      viewportFraction: 1)),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: nowPlayingList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => controller.animateToPage(entry.key),
                    child: Container(
                      width: 7.0,
                      height: 7.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              (Theme.of(context).brightness == Brightness.dark
                                      ? Colors.white
                                      : Colors.black)
                                  .withOpacity(
                                      current.value == entry.key ? 0.9 : 0.4)),
                    ),
                  );
                }).toList(),
              ),
            ],
          )
        } else ...{
          const Center(child: Text("Error Occured "))
        },
      ],
    );
  }
}
