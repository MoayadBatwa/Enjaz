// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club_plan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClubPlanModel _$ClubPlanModelFromJson(Map<String, dynamic> json) =>
    _ClubPlanModel(
      id: json['id'] as String,
      club: ClubModel.fromJson(json['clubs'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$ClubPlanModelToJson(_ClubPlanModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'clubs': instance.club,
      'created_at': instance.createdAt.toIso8601String(),
    };
