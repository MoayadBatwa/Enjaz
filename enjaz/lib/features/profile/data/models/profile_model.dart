import 'package:enjaz/core/common/models/university_model/university_model.dart';
import 'package:enjaz/features/auth/signup/data/major_models/major_model.dart';
import 'package:enjaz/features/profile/domain/entities/profile_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
abstract class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    @JsonSerializable(fieldRename: .snake) required String id,
    required String authId,
    required String name,
    required String email,
    required String createdAt,
    required String role,
    required String phoneNumber,
    required UniversityModel universities,
    required MajorModel majors,
    required String gender,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, Object?> json) =>
      _$ProfileModelFromJson(json);
}

extension ProfileModelMapper on ProfileModel {
  ProfileEntity toEntity() {
    return ProfileEntity(
      phoneNumber: phoneNumber,
      id: id,
      authId: authId,
      name: name,
      email: email,
      createdAt: createdAt,
      role: role,
      universities: universities,
      majors: majors,
      gender: gender,
    );
  }
}
