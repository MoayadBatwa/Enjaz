import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/sub/assign_leader/domain/entities/assign_leader_entity.dart';
import 'package:enjaz/features/sub/assign_leader/domain/repositories/assign_leader_repository_domain.dart';


@lazySingleton
class AssignLeaderUseCase {
  final AssignLeaderRepositoryDomain _repositoryData;

  AssignLeaderUseCase(this._repositoryData);

   Future<Result<List<AssignLeaderEntity>, Failure>> getAssignLeader({required String clubId}) async {
    return _repositoryData.getAssignLeader(clubId: clubId);
  }
}
