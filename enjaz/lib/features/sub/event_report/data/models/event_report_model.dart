import 'package:enjaz/features/sub/event_report/domain/entities/event_report_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'event_report_model.freezed.dart';
part 'event_report_model.g.dart';

@freezed
abstract class EventReportModel with _$EventReportModel {
  const factory EventReportModel({
    required int id,
    required String firstName,
    required String lastName,
    
  }) = _EventReportModel;

  factory EventReportModel.fromJson(Map<String, Object?> json) => _$EventReportModelFromJson(json);
}



extension EventReportModelMapper on EventReportModel {
  EventReportEntity toEntity() {
    return EventReportEntity(id: id, firstName: firstName, lastName: lastName);
  }
  }
