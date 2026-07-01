import 'package:enjaz/core/common/entities/university_entity/university_entity.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/admin_features/universities/domain/repositories/universities_repository_domain.dart';

@lazySingleton
class UniversitiesUseCase {
  final UniversitiesRepositoryDomain _repositoryData;

  UniversitiesUseCase(this._repositoryData);

  Future<Result<List<UniversityEntity>, Failure>> getUniversities() async {
    return await _repositoryData.getUniversities();
  }

  Future<Result<void, Failure>> deleteUniversity(String id) {
    return _repositoryData.deleteUniversity(id);
  }
}
