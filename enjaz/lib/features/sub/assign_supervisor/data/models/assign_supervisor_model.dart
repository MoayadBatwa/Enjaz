import 'package:enjaz/features/sub/assign_supervisor/data/models/user_information_view_model.dart';
import 'package:enjaz/features/sub/assign_supervisor/domain/entities/assign_supervisor_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'assign_supervisor_model.freezed.dart';
part 'assign_supervisor_model.g.dart';

@freezed
abstract class AssignSupervisorModel with _$AssignSupervisorModel {
  @JsonSerializable(fieldRename: .snake)
  const factory AssignSupervisorModel({
    required String role,
    required UserInformationViewModel usersInformationView,
  }) = _AssignSupervisorModel;

  factory AssignSupervisorModel.fromJson(Map<String, Object?> json) =>
      _$AssignSupervisorModelFromJson(json);
}

extension AssignSupervisorModelMapper on AssignSupervisorModel {
  AssignSupervisorEntity toEntity() {
    return AssignSupervisorEntity(
      users: usersInformationView.toEntity(),
      role: role,
    );
  }
}
