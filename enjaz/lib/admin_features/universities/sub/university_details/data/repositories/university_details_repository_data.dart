
import 'package:enjaz/core/common/entities/university_entity/university_entity.dart';
import 'package:enjaz/core/common/models/university_model/university_model.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/admin_features/universities/sub/university_details/data/datasources/university_details_remote_data_source.dart';
import 'package:enjaz/admin_features/universities/sub/university_details/domain/repositories/university_details_repository_domain.dart';

@LazySingleton(as: UniversityDetailsRepositoryDomain)
class UniversityDetailsRepositoryData implements UniversityDetailsRepositoryDomain{
  final BaseUniversityDetailsRemoteDataSource remoteDataSource;


  UniversityDetailsRepositoryData(this.remoteDataSource);

  @override
  Future<Result<UniversityEntity, Failure>> getUniversityDetails(
    String universityId,
  ) async {
    try {
      final response = await remoteDataSource.getUniversityDetails(
        universityId,
      );

      return Success(response.toEntity());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
