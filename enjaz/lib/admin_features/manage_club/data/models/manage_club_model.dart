import 'package:enjaz/admin_features/manage_club/domain/entities/manage_club_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'manage_club_model.freezed.dart';
part 'manage_club_model.g.dart';

@freezed
abstract class ManageClubModel with _$ManageClubModel {
  const factory ManageClubModel({
    required int id,
    required String firstName,
    required String lastName,
    
  }) = _ManageClubModel;

  factory ManageClubModel.fromJson(Map<String, Object?> json) => _$ManageClubModelFromJson(json);
}



extension ManageClubModelMapper on ManageClubModel {
  ManageClubEntity toEntity() {
    return ManageClubEntity(id: id, firstName: firstName, lastName: lastName);
  }
  }
