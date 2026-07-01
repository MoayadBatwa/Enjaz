// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileInfoModel _$ProfileInfoModelFromJson(Map<String, dynamic> json) =>
    _ProfileInfoModel(
      id: (json['id'] as num).toInt(),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$ProfileInfoModelToJson(_ProfileInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
