import 'package:enjaz/core/common/entities/enrollment_entity/enrollment_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'enrollment_model.freezed.dart';
part 'enrollment_model.g.dart';

@freezed
abstract class EnrollmentModel with _$EnrollmentModel {
  @JsonSerializable(fieldRename: .snake)
  const factory EnrollmentModel({
    required String id,
    required String eventId,
    required String userId,
  }) = _EnrollmentModel;

  factory EnrollmentModel.fromJson(Map<String, dynamic> json) =>
      _$EnrollmentModelFromJson(json);
}

extension EnrollmentModelMapper on EnrollmentModel {
  EnrollmentEntity toEntity() {
    return EnrollmentEntity(eventId: eventId, userId: userId, id: id);
  }
}
