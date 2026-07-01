// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assign_leader_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AssignLeaderModel _$AssignLeaderModelFromJson(Map<String, dynamic> json) =>
    _AssignLeaderModel(
      role: json['role'] as String,
      usersInformationView: UserInformationViewModel.fromJson(
        json['users_information_view'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$AssignLeaderModelToJson(_AssignLeaderModel instance) =>
    <String, dynamic>{
      'role': instance.role,
      'users_information_view': instance.usersInformationView,
    };
