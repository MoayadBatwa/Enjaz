import 'package:enjaz/features/clubs/sub/club_join_requests/domain/entities/club_join_requests_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'club_join_requests_model.freezed.dart';
part 'club_join_requests_model.g.dart';

@freezed
abstract class ClubJoinRequestsModel with _$ClubJoinRequestsModel {
  const factory ClubJoinRequestsModel({
    required String id,
    required String name,
    required String email,
    required String userId,
    required String clubId,
  }) = _ClubJoinRequestsModel;

  factory ClubJoinRequestsModel.fromJson(Map<String, Object?> json) =>
      _$ClubJoinRequestsModelFromJson(json);
}

extension ClubJoinRequestsModelMapper on ClubJoinRequestsModel {
  ClubJoinRequestsEntity toEntity() {
    return ClubJoinRequestsEntity(
      id: id,
      name: name,
      email: email,
      userId: userId,
      clubId: clubId,
    );
  }
}
