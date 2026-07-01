import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/profile/domain/entities/profile_entity.dart';
import 'package:enjaz/features/profile/domain/repositories/profile_repository_domain.dart';


@lazySingleton
class ProfileUseCase {
  final ProfileRepositoryDomain _repositoryData;

  ProfileUseCase(this._repositoryData);

   Future<Result<ProfileEntity, Failure>> getProfile() async {
    return _repositoryData.getProfile();
  }

  Future<Result<void, Failure>> updateUserAvatar(
    String userId,
    String type,
  ) async {
    return _repositoryData.updateUserAvatar(userId, type);
  }
}
