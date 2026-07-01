import 'package:enjaz/core/common/entities/university_entity/university_entity.dart';
import 'package:enjaz/core/constants/app_enums.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/sub/filter/domain/repositories/filter_repository_domain.dart';

@lazySingleton
class FilterUseCase {
  final FilterRepositoryDomain _repositoryData;

  FilterUseCase(this._repositoryData);

  Future<Result<List<T>, Failure>> getFilter<T>({required FilterCategoryEnum category}) async {
    return _repositoryData.getFilter(category: category);
  }

  Future<Result<List<UniversityEntity>, Failure>> getUniversities<T>() async {
    return _repositoryData.getUniversities();
  }
}
