import 'package:enjaz/features/profile/sub/profile_info/domain/entities/profile_info_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'profile_info_model.freezed.dart';
part 'profile_info_model.g.dart';

@freezed
abstract class ProfileInfoModel with _$ProfileInfoModel {
  const factory ProfileInfoModel({
    required int id,
    required String firstName,
    required String lastName,
    
  }) = _ProfileInfoModel;

  factory ProfileInfoModel.fromJson(Map<String, Object?> json) => _$ProfileInfoModelFromJson(json);
}



extension ProfileInfoModelMapper on ProfileInfoModel {
  ProfileInfoEntity toEntity() {
    return ProfileInfoEntity(id: id, firstName: firstName, lastName: lastName);
  }
  }
