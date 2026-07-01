import 'package:enjaz/core/common/entities/event_entity/event_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'event_model.freezed.dart';
part 'event_model.g.dart';

@freezed
abstract class EventModel with _$EventModel {
  @JsonSerializable(fieldRename: .snake)
  const factory EventModel({
    required String id,
    required String title,
    required String description,
    required DateTime dateAt,
    required String place,
    required int capacity,
    required DateTime createdAt,
    required String planId,
    required String mapUrl,
    required String startTime,
    required String endTime,
    required bool isOpen,
    required String status,
  }) = _EventModel;

  factory EventModel.fromJson(Map<String, Object?> json) =>
      _$EventModelFromJson(json);
}

extension EventModelMapper on EventModel {
  EventEntity toEntity() {
    return EventEntity(
      id: id,
      title: title,
      description: description,
      dateAt: dateAt,
      place: place,
      capacity: capacity,
      createdAt: createdAt,
      plan: planId,
      startTime: startTime,
      endTime: endTime,
      isOpen: isOpen,
      status: status,
      mapUrl: mapUrl,
    );
  }
}
