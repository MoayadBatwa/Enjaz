import 'package:enjaz/core/common/entities/user_entity/user_entity.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/failure.dart';

abstract class AssignSupervisorRepositoryDomain {
    Future<Result<List<UserEntity>, Failure>> getAssignSupervisor({required String universityId});
}
