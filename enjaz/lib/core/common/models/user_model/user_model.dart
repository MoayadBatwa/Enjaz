import 'package:enjaz/core/common/entities/user_entity/user_entity.dart';
import 'package:enjaz/core/common/models/university_model/university_model.dart';
import 'package:enjaz/features/auth/signup/data/major_models/major_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  @JsonSerializable(fieldRename: .snake)
  const factory UserModel({
    required String id,
    required String authId,
    required String name,
    required String email,
    required String phoneNumber,
    required String gender,
    required String role,
    required MajorModel majors,
    required UniversityModel universities,
    required String createdAt,
    required String avatarType,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);
}

extension UserModelMapper on UserModel {
  UserEntity toEntity() {
    return UserEntity(
      id: id,
      createdAt: createdAt,
      email: email,
      phoneNumber: phoneNumber,
      authId: authId,
      name: name,
      gender: gender,
      role: role,
      major: majors.toEntity(),
      university: universities.toEntity(),
      avatarType: avatarType,
    );
  }
}
