// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club_edit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClubEditModel _$ClubEditModelFromJson(Map<String, dynamic> json) =>
    _ClubEditModel(
      id: (json['id'] as num).toInt(),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$ClubEditModelToJson(_ClubEditModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
