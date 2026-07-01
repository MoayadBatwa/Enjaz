import 'package:enjaz/core/common/entities/university_entity/university_entity.dart';
import 'package:enjaz/core/common/models/university_model/university_model.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/sub/create_club/data/datasources/create_club_remote_data_source.dart';
import 'package:enjaz/features/sub/create_club/domain/repositories/create_club_repository_domain.dart';

@LazySingleton(as: CreateClubRepositoryDomain)
class CreateClubRepositoryData implements CreateClubRepositoryDomain {
  final BaseCreateClubRemoteDataSource remoteDataSource;

  CreateClubRepositoryData(this.remoteDataSource);

  @override
  Future<Result<void, Failure>> getCreateClub({
    required String name,
    required String description,
    required String universityId,
    required String assignSupervisor,
  }) async {
    try {
      final response = await remoteDataSource.getCreateClub(
        name: name,
        description: description,
        universityId: universityId,
        assignSupervisor: assignSupervisor,
      );
      return Success(response);
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }

  @override
  Future<Result<List<UniversityEntity>, Failure>> getUniversities() async {
    try {
      final response = await remoteDataSource.getUniversities();
      return Success(
        response.map((university) => university.toEntity()).toList(),
      );
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }

  @override
  Future<Result<String, Failure>> getAssignSupervisor({
    required String universityId,
  }) async {
    try {
      final response = await remoteDataSource.getAssignSupervisor(
        universityId: universityId,
      );
      return Success(response);
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
