// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: json['id'] as String,
  authId: json['auth_id'] as String,
  name: json['name'] as String,
  email: json['email'] as String,
  phoneNumber: json['phone_number'] as String,
  gender: json['gender'] as String,
  role: json['role'] as String,
  majors: MajorModel.fromJson(json['majors'] as Map<String, dynamic>),
  universities: UniversityModel.fromJson(
    json['universities'] as Map<String, dynamic>,
  ),
  createdAt: json['created_at'] as String,
  avatarType: json['avatar_type'] as String,
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'auth_id': instance.authId,
      'name': instance.name,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
      'gender': instance.gender,
      'role': instance.role,
      'majors': instance.majors,
      'universities': instance.universities,
      'created_at': instance.createdAt,
      'avatar_type': instance.avatarType,
    };
