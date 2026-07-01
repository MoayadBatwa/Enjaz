import 'package:enjaz/features/event_schedule/domain/entities/event_schedule_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'event_schedule_model.freezed.dart';
part 'event_schedule_model.g.dart';

@freezed
abstract class EventScheduleModel with _$EventScheduleModel {
  const factory EventScheduleModel({
    required int id,
    required String firstName,
    required String lastName, 
    
  }) = _EventScheduleModel;

  factory EventScheduleModel.fromJson(Map<String, Object?> json) => _$EventScheduleModelFromJson(json);
}



extension EventScheduleModelMapper on EventScheduleModel {
  EventScheduleEntity toEntity() {
    return EventScheduleEntity(id: id, firstName: firstName, lastName: lastName);
  }
  }
