import 'package:enjaz/features/sub/assign_leader/data/models/assign_leader_model.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/sub/assign_leader/domain/entities/assign_leader_entity.dart';

import 'package:enjaz/features/sub/assign_leader/data/datasources/assign_leader_remote_data_source.dart';
import 'package:enjaz/features/sub/assign_leader/domain/repositories/assign_leader_repository_domain.dart';

@LazySingleton(as: AssignLeaderRepositoryDomain)
class AssignLeaderRepositoryData implements AssignLeaderRepositoryDomain {
  final BaseAssignLeaderRemoteDataSource remoteDataSource;

  AssignLeaderRepositoryData(this.remoteDataSource);

  @override
  Future<Result<List<AssignLeaderEntity>, Failure>> getAssignLeader({
    required String clubId,
  }) async {
    try {
      final response = await remoteDataSource.getAssignLeader(clubId: clubId);
      return Success(response.map((user) => user.toEntity()).toList());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
