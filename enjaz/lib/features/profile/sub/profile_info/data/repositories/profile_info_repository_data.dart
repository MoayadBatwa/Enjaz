import 'package:enjaz/features/auth/signup/data/major_models/major_model.dart';
import 'package:enjaz/features/auth/signup/domain/major_entities/major_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';
import 'package:enjaz/core/errors/failure.dart';

import 'package:enjaz/features/profile/sub/profile_info/data/datasources/profile_info_remote_data_source.dart';
import 'package:enjaz/features/profile/sub/profile_info/domain/repositories/profile_info_repository_domain.dart';

@LazySingleton(as: ProfileInfoRepositoryDomain)
class ProfileInfoRepositoryData implements ProfileInfoRepositoryDomain {
  final BaseProfileInfoRemoteDataSource remoteDataSource;
  ProfileInfoRepositoryData(this.remoteDataSource);

  @override
  Future<Result<List<MajorEntity>, Failure>> getProfileInfo() async {
    try {
      final response = await remoteDataSource.getProfileInfo();
      return Success(response.map((major) => major.toEntity()).toList());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }

  @override
  Future<Result<void, Failure>> getProfileUpdateMethod({
    required String name,
    required String phoneNumber,
    required String major,
    required String gender,
  }) async {
    try {
      final response = await remoteDataSource.getProfileUpdateMethod(
        name: name,
        phoneNumber: phoneNumber,
        major: major,
        gender: gender,
      );
      return Success(response);
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
