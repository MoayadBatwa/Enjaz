// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) =>
    _ProfileModel(
      id: json['id'] as String,
      authId: json['authId'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      createdAt: json['createdAt'] as String,
      role: json['role'] as String,
      phoneNumber: json['phoneNumber'] as String,
      universities: UniversityModel.fromJson(
        json['universities'] as Map<String, dynamic>,
      ),
      majors: MajorModel.fromJson(json['majors'] as Map<String, dynamic>),
      gender: json['gender'] as String,
    );

Map<String, dynamic> _$ProfileModelToJson(_ProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'authId': instance.authId,
      'name': instance.name,
      'email': instance.email,
      'createdAt': instance.createdAt,
      'role': instance.role,
      'phoneNumber': instance.phoneNumber,
      'universities': instance.universities,
      'majors': instance.majors,
      'gender': instance.gender,
    };
