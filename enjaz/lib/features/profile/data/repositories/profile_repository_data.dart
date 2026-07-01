import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/profile/domain/entities/profile_entity.dart';

import 'package:enjaz/features/profile/data/datasources/profile_remote_data_source.dart';
import 'package:enjaz/features/profile/data/models/profile_model.dart';
import 'package:enjaz/features/profile/domain/repositories/profile_repository_domain.dart';

@LazySingleton(as: ProfileRepositoryDomain)
class ProfileRepositoryData implements ProfileRepositoryDomain {
  final BaseProfileRemoteDataSource remoteDataSource;

  ProfileRepositoryData(this.remoteDataSource);

  @override
  Future<Result<ProfileEntity, Failure>> getProfile() async {
    try {
      final response = await remoteDataSource.getProfile();
      return Success(response.toEntity());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }

  @override
  Future<Result<void, Failure>> updateUserAvatar(
    String userId,
    String type,
  ) async {
    try {
      await remoteDataSource.updateUserAvatar(userId, type);
      return Success(null);
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
