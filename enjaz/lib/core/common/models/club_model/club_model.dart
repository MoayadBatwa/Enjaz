import 'package:enjaz/core/common/models/university_model/university_model.dart';
import 'package:enjaz/core/common/entities/club_entity/club_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'club_model.freezed.dart';
part 'club_model.g.dart';

@freezed
abstract class ClubModel with _$ClubModel {
  @JsonSerializable(fieldRename: .snake)
  const factory ClubModel({
    required String id,
    @JsonKey(name: "universities") required UniversityModel university,
    required String name,
    required String description,
    required String logoUrl,
    required String createdAt,
  }) = _ClubModel;

  factory ClubModel.fromJson(Map<String, Object?> json) =>
      _$ClubModelFromJson(json);
}

extension ClubsModelMapper on ClubModel {
  ClubEntity toEntity() {
    return ClubEntity(
      id: id,
      university: university,
      name: name,
      description: description,
      logoUrl: logoUrl,
      createdAt: createdAt,
    );
  }
}
