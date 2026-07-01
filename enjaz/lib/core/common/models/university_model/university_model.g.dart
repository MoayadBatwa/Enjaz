// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'university_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UniversityModel _$UniversityModelFromJson(Map<String, dynamic> json) =>
    _UniversityModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      location: json['location'] as String,
      branch: json['branch'] as String,
      gender: json['gender'] as String,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$UniversityModelToJson(_UniversityModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'location': instance.location,
      'branch': instance.branch,
      'gender': instance.gender,
      'created_at': instance.createdAt,
    };
