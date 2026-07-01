import 'package:enjaz/features/sub/assign_supervisor/domain/entities/user_information_view_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_information_view_model.freezed.dart';
part 'user_information_view_model.g.dart';

@freezed
abstract class UserInformationViewModel with _$UserInformationViewModel {
  @JsonSerializable(fieldRename: .snake)
  const factory UserInformationViewModel({
    required String id,
    required String name,
    required String role,
    required String email,
    required String gender,
    required String createdAt,
    required String majorName,
    required String phoneNumber,
    required String universityName,
  }) = _UserInformationViewModel;

  factory UserInformationViewModel.fromJson(Map<String, Object?> json) =>
      _$UserInformationViewModelFromJson(json);
}

extension AssignSupervisorModelMapper on UserInformationViewModel {
  UserInformationViewEntity toEntity() {
    return UserInformationViewEntity(
      id: id,
      name: name,
      role: role,
      email: email,
      gender: gender,
      createdAt: createdAt,
      majorName: majorName,
      phoneNumber: phoneNumber,
      universityName: universityName,
    );
  }
}
