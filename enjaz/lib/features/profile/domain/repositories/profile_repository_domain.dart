import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/profile/domain/entities/profile_entity.dart';

abstract class ProfileRepositoryDomain {
  Future<Result<ProfileEntity, Failure>> getProfile();
  Future<Result<void, Failure>> updateUserAvatar(String userId, String type);
}
