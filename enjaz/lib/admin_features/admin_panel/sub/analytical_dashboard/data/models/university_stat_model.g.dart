// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'university_stat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UniversityStatModel _$UniversityStatModelFromJson(Map<String, dynamic> json) =>
    _UniversityStatModel(
      code: json['code'] as String,
      clubCount: (json['club_count'] as num).toInt(),
      eventCount: (json['event_count'] as num).toInt(),
      memberCount: (json['member_count'] as num).toInt(),
      enrollmentCount: (json['enrollment_count'] as num).toInt(),
      capacityUtilization: (json['capacity_utilization'] as num).toDouble(),
    );

Map<String, dynamic> _$UniversityStatModelToJson(
  _UniversityStatModel instance,
) => <String, dynamic>{
  'code': instance.code,
  'club_count': instance.clubCount,
  'event_count': instance.eventCount,
  'member_count': instance.memberCount,
  'enrollment_count': instance.enrollmentCount,
  'capacity_utilization': instance.capacityUtilization,
};
