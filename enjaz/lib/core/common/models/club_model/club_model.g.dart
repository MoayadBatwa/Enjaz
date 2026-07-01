// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClubModel _$ClubModelFromJson(Map<String, dynamic> json) => _ClubModel(
  id: json['id'] as String,
  university: UniversityModel.fromJson(
    json['universities'] as Map<String, dynamic>,
  ),
  name: json['name'] as String,
  description: json['description'] as String,
  logoUrl: json['logo_url'] as String,
  createdAt: json['created_at'] as String,
);

Map<String, dynamic> _$ClubModelToJson(_ClubModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'universities': instance.university,
      'name': instance.name,
      'description': instance.description,
      'logo_url': instance.logoUrl,
      'created_at': instance.createdAt,
    };
