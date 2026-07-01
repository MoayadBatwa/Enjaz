import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';
import 'package:injectable/injectable.dart';

import 'package:enjaz/admin_features/universities/sub/add_university/data/datasources/add_university_remote_data_source.dart';
import 'package:enjaz/admin_features/universities/sub/add_university/domain/repositories/add_university_repository_domain.dart';
import 'package:multiple_result/multiple_result.dart';

@LazySingleton(as: AddUniversityRepositoryDomain)
class AddUniversityRepositoryData implements AddUniversityRepositoryDomain {
  final BaseAddUniversityRemoteDataSource remoteDataSource;

  AddUniversityRepositoryData(this.remoteDataSource);

  @override
  Future<Result<void, Failure>> addUniversity({
    required String name,
    required String description,
    required String location,
    required String branch,
    required String gender,
    required String code,
  }) async {
    try {
      await remoteDataSource.addUniversity(
        name: name,
        description: description,
        location: location,
        branch: branch,
        gender: gender, code: code,
      );

      return const Success(null);
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}