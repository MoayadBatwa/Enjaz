import 'package:enjaz/core/common/entities/university_entity/university_entity.dart';
import 'package:enjaz/core/common/models/university_model/university_model.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';
import 'package:enjaz/core/errors/failure.dart';

import 'package:enjaz/admin_features/universities/data/datasources/universities_remote_data_source.dart';
import 'package:enjaz/admin_features/universities/domain/repositories/universities_repository_domain.dart';

@LazySingleton(as: UniversitiesRepositoryDomain)
class UniversitiesRepositoryData implements UniversitiesRepositoryDomain {
  final BaseUniversitiesRemoteDataSource remoteDataSource;

  UniversitiesRepositoryData(this.remoteDataSource);

  @override
  Future<Result<List<UniversityEntity>, Failure>> getUniversities() async {
    try {
      final response = await remoteDataSource.getUniversities();

      return Success(response.map((e) => e.toEntity()).toList());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }

  @override
  Future<Result<void, Failure>> deleteUniversity(String id) async {
    try {
      await remoteDataSource.deleteUniversity(id);
      return Success(null);
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
