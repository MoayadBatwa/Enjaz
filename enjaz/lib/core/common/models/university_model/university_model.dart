import 'package:enjaz/core/common/entities/university_entity/university_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'university_model.freezed.dart';
part 'university_model.g.dart';

@freezed
abstract class UniversityModel with _$UniversityModel {
  @JsonSerializable(fieldRename: .snake)
  const factory UniversityModel({
    required String id,
    required String name,
    required String description,
    required String location,
    required String branch,
    required String gender,
    required String createdAt,
  }) = _UniversityModel;

  factory UniversityModel.fromJson(Map<String, Object?> json) =>
      _$UniversityModelFromJson(json);
}

extension UniversityModelMapper on UniversityModel {
  UniversityEntity toEntity() {
    return UniversityEntity(
      id: id,
      name: name,
      description: description,
      location: location,
      branch: branch,
      gender: gender,
      createdAt: createdAt,
    );
  }
}
