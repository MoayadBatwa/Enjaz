import 'package:enjaz/features/clubs/sub/club_members/domain/entities/club_members_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'club_members_model.freezed.dart';
part 'club_members_model.g.dart';

@freezed
abstract class ClubMembersModel with _$ClubMembersModel {
  const factory ClubMembersModel({
    required String id,
    required String name,
    required String email,
    required String role,
    required String avatar,
  }) = _ClubMembersModel;

  factory ClubMembersModel.fromJson(Map<String, Object?> json) =>
      _$ClubMembersModelFromJson(json);
}

extension ClubMembersModelMapper on ClubMembersModel {
  ClubMembersEntity toEntity() {
    return ClubMembersEntity(
      id: id,
      name: name,
      email: email,
      role: role,
      avatar: avatar,
    );
  }
}
