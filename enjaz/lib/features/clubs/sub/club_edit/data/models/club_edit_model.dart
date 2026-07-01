import 'package:enjaz/features/clubs/sub/club_edit/domain/entities/club_edit_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'club_edit_model.freezed.dart';
part 'club_edit_model.g.dart';

@freezed
abstract class ClubEditModel with _$ClubEditModel {
  const factory ClubEditModel({
    required int id,
    required String firstName,
    required String lastName,
    
  }) = _ClubEditModel;

  factory ClubEditModel.fromJson(Map<String, Object?> json) => _$ClubEditModelFromJson(json);
}



extension ClubEditModelMapper on ClubEditModel {
  ClubEditEntity toEntity() {
    return ClubEditEntity(id: id, firstName: firstName, lastName: lastName);
  }
  }
