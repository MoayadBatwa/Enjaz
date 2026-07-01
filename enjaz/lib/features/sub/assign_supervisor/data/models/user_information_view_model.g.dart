// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_information_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserInformationViewModel _$UserInformationViewModelFromJson(
  Map<String, dynamic> json,
) => _UserInformationViewModel(
  id: json['id'] as String,
  name: json['name'] as String,
  role: json['role'] as String,
  email: json['email'] as String,
  gender: json['gender'] as String,
  createdAt: json['created_at'] as String,
  majorName: json['major_name'] as String,
  phoneNumber: json['phone_number'] as String,
  universityName: json['university_name'] as String,
);

Map<String, dynamic> _$UserInformationViewModelToJson(
  _UserInformationViewModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'role': instance.role,
  'email': instance.email,
  'gender': instance.gender,
  'created_at': instance.createdAt,
  'major_name': instance.majorName,
  'phone_number': instance.phoneNumber,
  'university_name': instance.universityName,
};
