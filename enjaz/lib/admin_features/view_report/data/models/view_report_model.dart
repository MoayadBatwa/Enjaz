import 'package:enjaz/admin_features/view_report/domain/entities/view_report_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'view_report_model.freezed.dart';
part 'view_report_model.g.dart';

@freezed
abstract class ViewReportModel with _$ViewReportModel {
  @JsonSerializable(fieldRename: .snake)
  const factory ViewReportModel({
    required String id,
    required String attendance,
    required String challenges,
    required String recommendations,
    required DateTime createdAt,
    required String file,
    required String eventId,
    required String eventName,
  }) = _ViewReportModel;

  factory ViewReportModel.fromJson(Map<String, Object?> json) =>
      _$ViewReportModelFromJson(json);
}

extension ViewReportModelMapper on ViewReportModel {
  ViewReportEntity toEntity() {
    return ViewReportEntity(
      id: id,
      attendance: attendance,
      challenges: challenges,
      recommendations: recommendations,
      file: file,
      eventId: eventId,
      eventName: eventName,
      createdAt: createdAt,
    );
  }
}
