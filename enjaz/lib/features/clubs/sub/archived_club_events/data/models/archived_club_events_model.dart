import 'package:enjaz/features/clubs/sub/archived_club_events/domain/entities/archived_club_events_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'archived_club_events_model.freezed.dart';
part 'archived_club_events_model.g.dart';

@freezed
abstract class ArchivedClubEventsModel with _$ArchivedClubEventsModel {
  @JsonSerializable(fieldRename: .snake)
  const factory ArchivedClubEventsModel({
    required String id,
    required String title,
    required String description,
    required DateTime dateAt,
    required String place,
    required int capacity,
    required String createdAt,
    required String planId,
    required String startTime,
    required String endTime,
    required bool isOpen,
    required String status,
    required String? mapUrl,
    required bool hasReport,
  }) = _ArchivedClubEventsModel;

  factory ArchivedClubEventsModel.fromJson(Map<String, Object?> json) =>
      _$ArchivedClubEventsModelFromJson(json);
}

extension ArchivedClubEventsModelMapper on ArchivedClubEventsModel {
  ArchivedClubEventsEntity toEntity() {
    return ArchivedClubEventsEntity(
      id: id,
      title: title,
      description: description,
      dateAt: dateAt,
      place: place,
      capacity: capacity,
      createdAt: createdAt,
      planId: planId,
      startTime: startTime,
      endTime: endTime,
      isOpen: isOpen,
      status: status,
      mapUrl: mapUrl,
      hasReport: hasReport,
    );
  }
}
