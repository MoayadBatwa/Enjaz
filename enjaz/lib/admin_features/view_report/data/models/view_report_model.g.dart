// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ViewReportModel _$ViewReportModelFromJson(Map<String, dynamic> json) =>
    _ViewReportModel(
      id: json['id'] as String,
      attendance: json['attendance'] as String,
      challenges: json['challenges'] as String,
      recommendations: json['recommendations'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      file: json['file'] as String,
      eventId: json['event_id'] as String,
      eventName: json['event_name'] as String,
    );

Map<String, dynamic> _$ViewReportModelToJson(_ViewReportModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attendance': instance.attendance,
      'challenges': instance.challenges,
      'recommendations': instance.recommendations,
      'created_at': instance.createdAt.toIso8601String(),
      'file': instance.file,
      'event_id': instance.eventId,
      'event_name': instance.eventName,
    };
