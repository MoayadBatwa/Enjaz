import 'package:enjaz/core/errors/failure.dart';
import 'package:injectable/injectable.dart';
import 'package:enjaz/admin_features/universities/sub/add_university/domain/repositories/add_university_repository_domain.dart';
import 'package:multiple_result/multiple_result.dart';

@lazySingleton
class AddUniversityUseCase {
  final AddUniversityRepositoryDomain _repositoryData;

  AddUniversityUseCase(this._repositoryData);
Future<Result<void, Failure>> addUniversity({
    required String name,
    required String description,
    required String location,
    required String branch,
    required String gender,
    required String code,
  }) {
    return _repositoryData.addUniversity(
      name: name,
      description: description,
      location: location,
      branch: branch,
      gender: gender,
      code: code,
    );
  }
}
