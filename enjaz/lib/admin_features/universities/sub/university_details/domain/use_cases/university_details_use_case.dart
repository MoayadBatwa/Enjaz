import 'package:enjaz/core/common/entities/university_entity/university_entity.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/admin_features/universities/sub/university_details/domain/repositories/university_details_repository_domain.dart';


@lazySingleton
class UniversityDetailsUseCase {
  final UniversityDetailsRepositoryDomain _repositoryData;

  UniversityDetailsUseCase(this._repositoryData);

    Future<Result<UniversityEntity, Failure>> getUniversityDetails(
    String universityId,
  ) async {
    return await _repositoryData.getUniversityDetails(universityId);
  }
  
}
