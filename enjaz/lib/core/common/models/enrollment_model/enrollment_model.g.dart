// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enrollment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EnrollmentModel _$EnrollmentModelFromJson(Map<String, dynamic> json) =>
    _EnrollmentModel(
      id: json['id'] as String,
      eventId: json['event_id'] as String,
      userId: json['user_id'] as String,
    );

Map<String, dynamic> _$EnrollmentModelToJson(_EnrollmentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'event_id': instance.eventId,
      'user_id': instance.userId,
    };
