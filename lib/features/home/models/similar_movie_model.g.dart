// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'similar_movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SimilarMovieModelImpl _$$SimilarMovieModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SimilarMovieModelImpl(
      page: (json['page'] as num).toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      totalResults: (json['totalResults'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SimilarMovieModelImplToJson(
        _$SimilarMovieModelImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'totalPages': instance.totalPages,
      'totalResults': instance.totalResults,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      adult: json['adult'] as bool,
      backdropPath: json['backdropPath'] as String?,
      genreIds: (json['genreIds'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      id: (json['id'] as num).toInt(),
      originalLanguage: json['originalLanguage'] as String?,
      originalTitle: json['originalTitle'] as String?,
      overview: json['overview'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      posterPath: json['posterPath'] as String?,
      releaseDate: json['releaseDate'] == null
          ? null
          : DateTime.parse(json['releaseDate'] as String),
      title: json['title'] as String?,
      video: json['video'] as bool,
      voteAverage: (json['voteAverage'] as num?)?.toDouble(),
      voteCount: (json['voteCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdropPath': instance.backdropPath,
      'genreIds': instance.genreIds,
      'id': instance.id,
      'originalLanguage': instance.originalLanguage,
      'originalTitle': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'posterPath': instance.posterPath,
      'releaseDate': instance.releaseDate?.toIso8601String(),
      'title': instance.title,
      'video': instance.video,
      'voteAverage': instance.voteAverage,
      'voteCount': instance.voteCount,
    };