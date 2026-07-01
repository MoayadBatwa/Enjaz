import 'package:enjaz/features/auth/signup/domain/major_entities/major_entity.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/failure.dart';

abstract class ProfileInfoRepositoryDomain {
  Future<Result<List<MajorEntity>, Failure>> getProfileInfo();
  Future<Result<void, Failure>> getProfileUpdateMethod({
    required String name,
    required String phoneNumber,
    required String major,
    required String gender,
  });
}
