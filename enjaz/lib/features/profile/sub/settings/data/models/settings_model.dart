import 'package:enjaz/features/profile/sub/settings/domain/entities/settings_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'settings_model.freezed.dart';
part 'settings_model.g.dart';

@freezed
abstract class SettingsModel with _$SettingsModel {
  const factory SettingsModel({
    required int id,
    required String firstName,
    required String lastName,
    
  }) = _SettingsModel;

  factory SettingsModel.fromJson(Map<String, Object?> json) => _$SettingsModelFromJson(json);
}



extension SettingsModelMapper on SettingsModel {
  SettingsEntity toEntity() {
    return SettingsEntity(id: id, firstName: firstName, lastName: lastName);
  }
  }
