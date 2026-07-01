// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_panel_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdminPanelModel _$AdminPanelModelFromJson(Map<String, dynamic> json) =>
    _AdminPanelModel(
      id: (json['id'] as num).toInt(),
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
    );

Map<String, dynamic> _$AdminPanelModelToJson(_AdminPanelModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
