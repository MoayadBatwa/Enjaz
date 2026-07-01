// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClubDetailModel _$ClubDetailModelFromJson(Map<String, dynamic> json) =>
    _ClubDetailModel(
      id: (json['id'] as num).toInt(),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$ClubDetailModelToJson(_ClubDetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
