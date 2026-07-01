import 'package:enjaz/features/sub/filter/domain/entities/filter_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'filter_model.freezed.dart';
part 'filter_model.g.dart';

@freezed
abstract class FilterModel with _$FilterModel {
  const factory FilterModel({
    required int id,
    required String firstName,
    required String lastName,
    
  }) = _FilterModel;

  factory FilterModel.fromJson(Map<String, Object?> json) => _$FilterModelFromJson(json);
}



extension FilterModelMapper on FilterModel {
  FilterEntity toEntity() {
    return FilterEntity(id: id, firstName: firstName, lastName: lastName);
  }
  }
