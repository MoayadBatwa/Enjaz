// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manage_club_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ManageClubModel _$ManageClubModelFromJson(Map<String, dynamic> json) =>
    _ManageClubModel(
      id: (json['id'] as num).toInt(),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$ManageClubModelToJson(_ManageClubModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
