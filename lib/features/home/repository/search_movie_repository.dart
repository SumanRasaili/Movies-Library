import 'package:tmdbapp/features/home/models/now_playing_model.dart';

abstract class SerachMovieRepo {
  String get path;
  Future<NowPlayingModel> getSearchData(String? searchQuery);
}
