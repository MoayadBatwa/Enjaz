import 'package:enjaz/core/common/models/university_model/university_model.dart';
import 'package:enjaz/core/common/entities/university_entity/university_entity.dart';
import 'package:enjaz/core/constants/app_enums.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/sub/filter/data/datasources/filter_remote_data_source.dart';
import 'package:enjaz/features/sub/filter/domain/repositories/filter_repository_domain.dart';

@LazySingleton(as: FilterRepositoryDomain)
class FilterRepositoryData implements FilterRepositoryDomain {
  final BaseFilterRemoteDataSource remoteDataSource;
  FilterRepositoryData(this.remoteDataSource);

  @override
  Future<Result<List<T>, Failure>> getFilter<T>({
    required FilterCategoryEnum category,
  }) async {
    try {
      final response = await remoteDataSource.getFilter(category: category);

      final List<T> entities = response.map((json) {
        switch (category) {
          case .clubs:
            return UniversityModel.fromJson(json).toEntity() as T;
          case FilterCategoryEnum.events:
            return UniversityModel.fromJson(json).toEntity() as T;
        }
      }).toList();

      return Success(entities);
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }

  @override
  Future<Result<List<UniversityEntity>, Failure>> getUniversities<T>() async {
    try {
      final response = await remoteDataSource.getUniversities();
      return Success(response.map((item) => item.toEntity()).toList());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
