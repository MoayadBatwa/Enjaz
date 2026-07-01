// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ActivityHistoryModel _$ActivityHistoryModelFromJson(
  Map<String, dynamic> json,
) => _ActivityHistoryModel(
  id: (json['id'] as num).toInt(),
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
);

Map<String, dynamic> _$ActivityHistoryModelToJson(
  _ActivityHistoryModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
};
