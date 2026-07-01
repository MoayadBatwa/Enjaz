import 'package:enjaz/core/common/entities/university_entity/university_entity.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/sub/create_club/domain/repositories/create_club_repository_domain.dart';

@lazySingleton
class CreateClubUseCase {
  final CreateClubRepositoryDomain _repositoryData;

  CreateClubUseCase(this._repositoryData);

  Future<Result<void, Failure>> getCreateClub({
    required String name,
    required String description,
    required String universityId,
    required String assignSupervisor,
  }) async {
    return _repositoryData.getCreateClub(
      name: name,
      description: description,
      universityId: universityId,
      assignSupervisor: assignSupervisor,
    );
  }

  Future<Result<List<UniversityEntity>, Failure>> getUniversities() async {
    return _repositoryData.getUniversities();
  }

  Future<Result<String, Failure>> getAssignSupervisor({
    required String universityId,
  }) async {
    return _repositoryData.getAssignSupervisor(universityId: universityId);
  }
}
