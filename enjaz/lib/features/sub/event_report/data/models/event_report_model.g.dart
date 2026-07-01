// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EventReportModel _$EventReportModelFromJson(Map<String, dynamic> json) =>
    _EventReportModel(
      id: (json['id'] as num).toInt(),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$EventReportModelToJson(_EventReportModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
