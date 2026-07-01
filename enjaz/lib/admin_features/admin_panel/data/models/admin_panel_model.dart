import 'package:enjaz/admin_features/admin_panel/domain/entities/admin_panel_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'admin_panel_model.freezed.dart';
part 'admin_panel_model.g.dart';

@freezed
abstract class AdminPanelModel with _$AdminPanelModel {
  const factory AdminPanelModel({
    required int id,
    required String firstName,
    required String lastName,
    
  }) = _AdminPanelModel;

  factory AdminPanelModel.fromJson(Map<String, Object?> json) => _$AdminPanelModelFromJson(json);
}



extension AdminPanelModelMapper on AdminPanelModel {
  AdminPanelEntity toEntity() {
    return AdminPanelEntity(id: id, firstName: firstName, lastName: lastName);
  }
  }
