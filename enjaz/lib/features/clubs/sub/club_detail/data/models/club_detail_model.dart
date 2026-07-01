import 'package:enjaz/features/clubs/sub/club_detail/domain/entities/club_detail_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'club_detail_model.freezed.dart';
part 'club_detail_model.g.dart';

@freezed
abstract class ClubDetailModel with _$ClubDetailModel {
  const factory ClubDetailModel({
    required int id,
    required String firstName,
    required String lastName,
    
  }) = _ClubDetailModel;

  factory ClubDetailModel.fromJson(Map<String, Object?> json) => _$ClubDetailModelFromJson(json);
}



extension ClubDetailModelMapper on ClubDetailModel {
  ClubDetailEntity toEntity() {
    return ClubDetailEntity(id: id, firstName: firstName, lastName: lastName);
  }
  }
