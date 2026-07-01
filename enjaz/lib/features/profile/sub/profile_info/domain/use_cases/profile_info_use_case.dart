import 'package:enjaz/features/auth/signup/domain/major_entities/major_entity.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/profile/sub/profile_info/domain/repositories/profile_info_repository_domain.dart';

@lazySingleton
class ProfileInfoUseCase {
  final ProfileInfoRepositoryDomain _repositoryData;

  ProfileInfoUseCase(this._repositoryData);

  Future<Result<List<MajorEntity>, Failure>> getProfileInfo() async {
    return _repositoryData.getProfileInfo();
  }

  Future<Result<void, Failure>> getProfileUpdateMethod({
    required String name,
    required String phoneNumber,
    required String major,
    required String gender,
  }) async {
    return _repositoryData.getProfileUpdateMethod(
      name: name,
      phoneNumber: phoneNumber,
      major: major,
      gender: gender,
    );
  }
}
