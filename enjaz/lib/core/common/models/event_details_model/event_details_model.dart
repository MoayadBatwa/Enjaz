import 'package:enjaz/core/common/entities/event_details_entity/event_details_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'event_details_model.freezed.dart';
part 'event_details_model.g.dart';

@freezed
abstract class EventDetailsModel with _$EventDetailsModel {
  @JsonSerializable(fieldRename: .snake)
  const factory EventDetailsModel({
    required String eventId,
    required String title,
    String? description,
    String? mapUrl,
    required DateTime dateAt,
    required String place,
    required int capacity,
    required String startTime,
    required String endTime,
    required bool isOpen,
    required String clubName,
    required String clubLogo,
    required String universityName,
    required int currentCount,
    required String status,
    required bool isEnrolled,
  }) = _EventDetailsModel;

  factory EventDetailsModel.fromJson(Map<String, Object?> json) =>
      _$EventDetailsModelFromJson(json);
}

extension EventDetailsModelMapper on EventDetailsModel {
  EventDetailsEntity toEntity() {
    return EventDetailsEntity(
      eventId: eventId,
      title: title,
      description: description,
      mapUrl: mapUrl,
      dateAt: dateAt,
      place: place,
      capacity: capacity,
      startTime: startTime,
      endTime: endTime,
      isOpen: isOpen,
      clubName: clubName,
      clubLogo: clubLogo,
      universityName: universityName,
      currentCount: currentCount,
      status: status,
      isEnrolled: isEnrolled,
    );
  }
}
