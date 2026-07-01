// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EventModel _$EventModelFromJson(Map<String, dynamic> json) => _EventModel(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  dateAt: DateTime.parse(json['date_at'] as String),
  place: json['place'] as String,
  capacity: (json['capacity'] as num).toInt(),
  createdAt: DateTime.parse(json['created_at'] as String),
  planId: json['plan_id'] as String,
  mapUrl: json['map_url'] as String,
  startTime: json['start_time'] as String,
  endTime: json['end_time'] as String,
  isOpen: json['is_open'] as bool,
  status: json['status'] as String,
);

Map<String, dynamic> _$EventModelToJson(_EventModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'date_at': instance.dateAt.toIso8601String(),
      'place': instance.place,
      'capacity': instance.capacity,
      'created_at': instance.createdAt.toIso8601String(),
      'plan_id': instance.planId,
      'map_url': instance.mapUrl,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'is_open': instance.isOpen,
      'status': instance.status,
    };
