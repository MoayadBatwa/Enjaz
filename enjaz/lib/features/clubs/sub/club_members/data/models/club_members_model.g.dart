// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club_members_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClubMembersModel _$ClubMembersModelFromJson(Map<String, dynamic> json) =>
    _ClubMembersModel(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      role: json['role'] as String,
      avatar: json['avatar'],
    );

Map<String, dynamic> _$ClubMembersModelToJson(_ClubMembersModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'role': instance.role,
      'avatar': instance.avatar,
    };
