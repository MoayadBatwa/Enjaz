import 'package:enjaz/admin_features/admin_panel/sub/analytical_dashboard/domain/entities/university_stat_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'university_stat_model.freezed.dart';
part 'university_stat_model.g.dart';

@freezed
abstract class UniversityStatModel with _$UniversityStatModel {
  @JsonSerializable(fieldRename: .snake)
  const factory UniversityStatModel({
    required String code,
    required int clubCount,
    required int eventCount,
    required int memberCount,
    required int enrollmentCount,
    required double capacityUtilization,
  }) = _UniversityStatModel;

  factory UniversityStatModel.fromJson(Map<String, Object?> json) =>
      _$UniversityStatModelFromJson(json);
}

extension UniversityStatModelMapper on UniversityStatModel {
  UniversityStatEntity toEntity() {
    return UniversityStatEntity(
      code: code,
      clubCount: clubCount,
      eventCount: eventCount,
      memberCount: memberCount,
      enrollmentCount: enrollmentCount,
      capacityUtilization: capacityUtilization,
    );
  }
}
