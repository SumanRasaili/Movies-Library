import 'package:freezed_annotation/freezed_annotation.dart';

part 'caste_details_model.freezed.dart';
part 'caste_details_model.g.dart';

@freezed
class CasteDetailsModel with _$CasteDetailsModel {
  const factory CasteDetailsModel({
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "cast") required List<Cast> cast,
    @JsonKey(name: "crew") required List<Crew> crew,
  }) = _CasteDetailsModel;

  factory CasteDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$CasteDetailsModelFromJson(json);
}

@freezed
class Cast with _$Cast {
  const factory Cast({
    @JsonKey(name: "adult") required bool adult,
    @JsonKey(name: "gender") required int? gender,
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "known_for_department") required String? knownForDepartment,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "original_name") required String? originalName,
    @JsonKey(name: "popularity") required double? popularity,
    @JsonKey(name: "profile_path") required String? profilePath,
    @JsonKey(name: "cast_id") required int? castId,
    @JsonKey(name: "character") required String? character,
    @JsonKey(name: "credit_id") required String? creditId,
    @JsonKey(name: "order") required int? order,
  }) = _Cast;

  factory Cast.fromJson(Map<String, dynamic> json) => _$CastFromJson(json);
}

@freezed
class Crew with _$Crew {
  const factory Crew({
    @JsonKey(name: "adult") required bool adult,
    @JsonKey(name: "gender") required int? gender,
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "known_for_department") required String? knownForDepartment,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "original_name") required String? originalName,
    @JsonKey(name: "popularity") required double? popularity,
    @JsonKey(name: "profile_path") required String? profilePath,
    @JsonKey(name: "credit_id") required String? creditId,
    @JsonKey(name: "department") required String? department,
    @JsonKey(name: "job") required String? job,
  }) = _Crew;

  factory Crew.fromJson(Map<String, dynamic> json) => _$CrewFromJson(json);
}
