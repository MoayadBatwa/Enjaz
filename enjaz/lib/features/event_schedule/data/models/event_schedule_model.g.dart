// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_schedule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EventScheduleModel _$EventScheduleModelFromJson(Map<String, dynamic> json) =>
    _EventScheduleModel(
      id: (json['id'] as num).toInt(),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$EventScheduleModelToJson(_EventScheduleModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
