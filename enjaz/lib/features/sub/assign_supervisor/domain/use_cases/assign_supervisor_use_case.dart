import 'package:enjaz/core/common/entities/user_entity/user_entity.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/sub/assign_supervisor/domain/repositories/assign_supervisor_repository_domain.dart';


@lazySingleton
class AssignSupervisorUseCase {
  final AssignSupervisorRepositoryDomain _repositoryData;

  AssignSupervisorUseCase(this._repositoryData);

   Future<Result<List<UserEntity>, Failure>> getAssignSupervisor({required String universityId}) async {
    return _repositoryData.getAssignSupervisor(universityId: universityId);
  }
}
