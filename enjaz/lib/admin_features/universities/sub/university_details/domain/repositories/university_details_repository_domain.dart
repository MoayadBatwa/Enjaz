import 'package:enjaz/core/common/entities/university_entity/university_entity.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/failure.dart';

abstract class UniversityDetailsRepositoryDomain {
  Future<Result<UniversityEntity, Failure>> getUniversityDetails(
    String universityId,
  );}
