import 'package:enjaz/features/sub/create_club/domain/entities/create_club_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'create_club_model.freezed.dart';
part 'create_club_model.g.dart';

@freezed
abstract class CreateClubModel with _$CreateClubModel {
  const factory CreateClubModel({
    required int id,
    required String firstName,
    required String lastName,
    
  }) = _CreateClubModel;

  factory CreateClubModel.fromJson(Map<String, Object?> json) => _$CreateClubModelFromJson(json);
}



extension CreateClubModelMapper on CreateClubModel {
  CreateClubEntity toEntity() {
    return CreateClubEntity(id: id, firstName: firstName, lastName: lastName);
  }
  }
