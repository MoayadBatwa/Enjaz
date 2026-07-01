// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'archived_club_events_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ArchivedClubEventsModel _$ArchivedClubEventsModelFromJson(
  Map<String, dynamic> json,
) => _ArchivedClubEventsModel(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  dateAt: DateTime.parse(json['date_at'] as String),
  place: json['place'] as String,
  capacity: (json['capacity'] as num).toInt(),
  createdAt: json['created_at'] as String,
  planId: json['plan_id'] as String,
  startTime: json['start_time'] as String,
  endTime: json['end_time'] as String,
  isOpen: json['is_open'] as bool,
  status: json['status'] as String,
  mapUrl: json['map_url'] as String?,
  hasReport: json['has_report'] as bool,
);

Map<String, dynamic> _$ArchivedClubEventsModelToJson(
  _ArchivedClubEventsModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'date_at': instance.dateAt.toIso8601String(),
  'place': instance.place,
  'capacity': instance.capacity,
  'created_at': instance.createdAt,
  'plan_id': instance.planId,
  'start_time': instance.startTime,
  'end_time': instance.endTime,
  'is_open': instance.isOpen,
  'status': instance.status,
  'map_url': instance.mapUrl,
  'has_report': instance.hasReport,
};
