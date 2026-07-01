// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EventDetailsModel _$EventDetailsModelFromJson(Map<String, dynamic> json) =>
    _EventDetailsModel(
      eventId: json['event_id'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      mapUrl: json['map_url'] as String?,
      dateAt: DateTime.parse(json['date_at'] as String),
      place: json['place'] as String,
      capacity: (json['capacity'] as num).toInt(),
      startTime: json['start_time'] as String,
      endTime: json['end_time'] as String,
      isOpen: json['is_open'] as bool,
      clubName: json['club_name'] as String,
      clubLogo: json['club_logo'] as String,
      universityName: json['university_name'] as String,
      currentCount: (json['current_count'] as num).toInt(),
      status: json['status'] as String,
      isEnrolled: json['is_enrolled'] as bool,
    );

Map<String, dynamic> _$EventDetailsModelToJson(_EventDetailsModel instance) =>
    <String, dynamic>{
      'event_id': instance.eventId,
      'title': instance.title,
      'description': instance.description,
      'map_url': instance.mapUrl,
      'date_at': instance.dateAt.toIso8601String(),
      'place': instance.place,
      'capacity': instance.capacity,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'is_open': instance.isOpen,
      'club_name': instance.clubName,
      'club_logo': instance.clubLogo,
      'university_name': instance.universityName,
      'current_count': instance.currentCount,
      'status': instance.status,
      'is_enrolled': instance.isEnrolled,
    };
