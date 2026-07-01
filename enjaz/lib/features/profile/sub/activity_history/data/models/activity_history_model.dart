import 'package:enjaz/features/profile/sub/activity_history/domain/entities/activity_history_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'activity_history_model.freezed.dart';
part 'activity_history_model.g.dart';

@freezed
abstract class ActivityHistoryModel with _$ActivityHistoryModel {
  const factory ActivityHistoryModel({
    required int id,
    required String firstName,
    required String lastName,
    
  }) = _ActivityHistoryModel;

  factory ActivityHistoryModel.fromJson(Map<String, Object?> json) => _$ActivityHistoryModelFromJson(json);
}



extension ActivityHistoryModelMapper on ActivityHistoryModel {
  ActivityHistoryEntity toEntity() {
    return ActivityHistoryEntity(id: id, firstName: firstName, lastName: lastName);
  }
  }
