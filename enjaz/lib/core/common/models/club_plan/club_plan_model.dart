import 'package:enjaz/core/common/entities/club_plan_entity/club_plan_entity.dart';
import 'package:enjaz/core/common/models/club_model/club_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'club_plan_model.freezed.dart';
part 'club_plan_model.g.dart';

@freezed
abstract class ClubPlanModel with _$ClubPlanModel {
  @JsonSerializable(fieldRename: .snake)
  const factory ClubPlanModel({
    required String id,
    @JsonKey(name: "clubs") required ClubModel club,
    required DateTime createdAt,
  }) = _ClubPlanModel;

  factory ClubPlanModel.fromJson(Map<String, Object?> json) =>
      _$ClubPlanModelFromJson(json);
}

extension ClubPlanModelMapper on ClubPlanModel {
  ClubPlanEntity toEntity() {
    return ClubPlanEntity(id: id, club: club, createdAt: createdAt);
  }
}
