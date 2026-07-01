// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'club_join_requests_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ClubJoinRequestsModel _$ClubJoinRequestsModelFromJson(
  Map<String, dynamic> json,
) => _ClubJoinRequestsModel(
  id: json['id'] as String,
  name: json['name'] as String,
  email: json['email'] as String,
  userId: json['userId'] as String,
  clubId: json['clubId'] as String,
);

Map<String, dynamic> _$ClubJoinRequestsModelToJson(
  _ClubJoinRequestsModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'userId': instance.userId,
  'clubId': instance.clubId,
};
