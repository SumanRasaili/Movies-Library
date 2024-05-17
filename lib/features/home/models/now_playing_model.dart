import 'package:freezed_annotation/freezed_annotation.dart';

part 'now_playing_model.freezed.dart';
part 'now_playing_model.g.dart';

@freezed
class NowPlayingModel with _$NowPlayingModel {
  const factory NowPlayingModel({
    required int page,
    required List<Result> results,
    @JsonKey(name: "total_pages") required int totalPages,
    @JsonKey(name: "total_results") required int totalResults,
  }) = _NowPlayingModel;

  factory NowPlayingModel.fromJson(Map<String, dynamic> json) =>
      _$NowPlayingModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    required bool adult,
    @JsonKey(name: "backdrop_path") required String? backdropPath,
    @JsonKey(name: "genre_ids") required List<int>? genreIds,
    required int id,
    @JsonKey(name: "original_language") required String? originalLanguage,
    @JsonKey(name: "original_title") required String? originalTitle,
    required String? overview,
    required double? popularity,
    @JsonKey(name: "poster_path") required String? posterPath,
    @JsonKey(name: "release_date") required DateTime? releaseDate,
    required String title,
    required bool video,
    @JsonKey(name: "vote_average") required double? voteAverage,
    @JsonKey(name: "vote_count") required int? voteCount,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
