// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assign_supervisor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AssignSupervisorModel _$AssignSupervisorModelFromJson(
  Map<String, dynamic> json,
) => _AssignSupervisorModel(
  role: json['role'] as String,
  usersInformationView: UserInformationViewModel.fromJson(
    json['users_information_view'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$AssignSupervisorModelToJson(
  _AssignSupervisorModel instance,
) => <String, dynamic>{
  'role': instance.role,
  'users_information_view': instance.usersInformationView,
};
