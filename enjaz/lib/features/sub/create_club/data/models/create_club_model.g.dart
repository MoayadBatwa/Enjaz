// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_club_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateClubModel _$CreateClubModelFromJson(Map<String, dynamic> json) =>
    _CreateClubModel(
      id: (json['id'] as num).toInt(),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$CreateClubModelToJson(_CreateClubModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
