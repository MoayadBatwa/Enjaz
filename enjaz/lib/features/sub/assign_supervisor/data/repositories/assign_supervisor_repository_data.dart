import 'package:enjaz/core/common/entities/user_entity/user_entity.dart';
import 'package:enjaz/core/common/models/user_model/user_model.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/sub/assign_supervisor/data/datasources/assign_supervisor_remote_data_source.dart';
import 'package:enjaz/features/sub/assign_supervisor/domain/repositories/assign_supervisor_repository_domain.dart';

@LazySingleton(as: AssignSupervisorRepositoryDomain)
class AssignSupervisorRepositoryData
    implements AssignSupervisorRepositoryDomain {
  final BaseAssignSupervisorRemoteDataSource remoteDataSource;

  AssignSupervisorRepositoryData(this.remoteDataSource);

  @override
  Future<Result<List<UserEntity>, Failure>> getAssignSupervisor({
    required String universityId,
  }) async {
    try {
      final response = await remoteDataSource.getAssignSupervisor(
        universityId: universityId,
      );
      return Success(response.map((user) => user.toEntity()).toList());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
