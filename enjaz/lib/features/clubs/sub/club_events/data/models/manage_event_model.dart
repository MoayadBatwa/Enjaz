import 'package:enjaz/features/clubs/sub/club_events/domain/entities/manage_event_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'manage_event_model.freezed.dart';
part 'manage_event_model.g.dart';

@freezed
abstract class ManageEventModel with _$ManageEventModel {
  @JsonSerializable(fieldRename: .snake)
  const factory ManageEventModel({
    @JsonKey(includeIfNull: false)
    String? id,
    required String title,
    required String description,
    required DateTime dateAt,
    required String place,
    required int capacity,
    required String planId,
    String? mapUrl,
    required String startTime,
    required String endTime,
    @JsonKey(includeIfNull: false)
    bool? isOpen,
    @JsonKey(includeIfNull: false)
    String? status,
  }) = _ManageEventModel;

  factory ManageEventModel.fromJson(Map<String, Object?> json) =>
      _$ManageEventModelFromJson(json);

  factory ManageEventModel.fromEntity(ManageEventEntity entity) {
    return ManageEventModel(
      id: entity.id,
      title: entity.title,
      description: entity.description,
      dateAt: entity.dateAt,
      place: entity.place,
      mapUrl: entity.mapUrl,
      capacity: entity.capacity,
      planId: entity.planId,
      startTime: entity.startTime,
      endTime: entity.endTime,
      isOpen: entity.isOpen,
      status: entity.status,
    );
  }
}

extension ManageEventModelMapper on ManageEventModel {
  ManageEventEntity toEntity() {
    return ManageEventEntity(
      id: id,
      title: title,
      description: description,
      dateAt: dateAt,
      place: place,
      capacity: capacity,
      planId: planId,
      startTime: startTime,
      endTime: endTime,
      mapUrl: mapUrl,
      isOpen: isOpen,
      status: status,
    );
  }
}
