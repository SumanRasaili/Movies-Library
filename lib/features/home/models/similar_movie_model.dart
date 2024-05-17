// // To parse this JSON data, do
// //
// //     final similarMovieModel = similarMovieModelFromJson(jsonString);

// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'similar_movie_model.freezed.dart';
// part 'similar_movie_model.g.dart';

// @freezed
// class SimilarMovieModel with _$SimilarMovieModel {
//   const factory SimilarMovieModel({
//     required int page,
//     required List<Result> results,
//     required int? totalPages,
//     required int? totalResults,
//   }) = _SimilarMovieModel;

//   factory SimilarMovieModel.fromJson(Map<String, dynamic> json) =>
//       _$SimilarMovieModelFromJson(json);
// }

// @freezed
// class Result with _$Result {
//   const factory Result({
//     required bool adult,
//     required String? backdropPath,
//     required List<int>? genreIds,
//     required int id,
//     required String? originalLanguage,
//     required String? originalTitle,
//     required String? overview,
//     required double? popularity,
//     required String? posterPath,
//     required DateTime? releaseDate,
//     required String? title,
//     required bool video,
//     required double? voteAverage,
//     required int? voteCount,
//   }) = _Result;

//   factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
// }
