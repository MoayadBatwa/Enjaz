import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/sub/assign_leader/domain/entities/assign_leader_entity.dart';

abstract class AssignLeaderRepositoryDomain {
    Future<Result<List<AssignLeaderEntity>, Failure>> getAssignLeader({required String clubId});
}
