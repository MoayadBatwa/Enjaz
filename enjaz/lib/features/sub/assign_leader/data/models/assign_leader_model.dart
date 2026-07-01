import 'package:enjaz/features/sub/assign_leader/domain/entities/assign_leader_entity.dart';
import 'package:enjaz/features/sub/assign_supervisor/data/models/user_information_view_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'assign_leader_model.freezed.dart';
part 'assign_leader_model.g.dart';

@freezed
abstract class AssignLeaderModel with _$AssignLeaderModel {
  @JsonSerializable(fieldRename: .snake)
  const factory AssignLeaderModel({
    required String role,
    required UserInformationViewModel usersInformationView,
  }) = _AssignLeaderModel;

  factory AssignLeaderModel.fromJson(Map<String, Object?> json) =>
      _$AssignLeaderModelFromJson(json);
}

extension AssignLeaderModelMapper on AssignLeaderModel {
  AssignLeaderEntity toEntity() {
    return AssignLeaderEntity(
      role: role,
      usersInformationView: usersInformationView.toEntity(),
    );
  }
}
