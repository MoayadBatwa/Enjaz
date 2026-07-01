import 'package:enjaz/core/common/entities/university_entity/university_entity.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/failure.dart';

abstract class CreateClubRepositoryDomain {
    Future<Result<void, Failure>> getCreateClub({
    required String name,
    required String description,
    required String universityId,
    required String assignSupervisor,
  });
    Future<Result<List<UniversityEntity>, Failure>> getUniversities();
    Future<Result<String, Failure>> getAssignSupervisor({required String universityId});
}