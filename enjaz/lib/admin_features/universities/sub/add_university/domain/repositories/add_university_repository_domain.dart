import 'package:enjaz/core/errors/failure.dart';
import 'package:multiple_result/multiple_result.dart';

abstract class AddUniversityRepositoryDomain {
  Future<Result<void, Failure>> addUniversity({
    required String name,
    required String description,
    required String location,
    required String branch,
    required String gender,
    required String code,
  });
}
