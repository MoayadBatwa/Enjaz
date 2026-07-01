import 'package:enjaz/features/auth/signup/domain/major_entities/major_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'major_model.freezed.dart';
part 'major_model.g.dart';

@freezed
abstract class MajorModel with _$MajorModel {
  const factory MajorModel({required String id, required String name}) =
      _MajorModel;

  factory MajorModel.fromJson(Map<String, Object?> json) =>
      _$MajorModelFromJson(json);
}

extension MajorModelMapper on MajorModel {
  MajorEntity toEntity() {
    return MajorEntity(id: id, name: name);
  }
}
