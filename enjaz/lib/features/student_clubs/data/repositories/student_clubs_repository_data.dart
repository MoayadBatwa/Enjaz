import 'package:enjaz/core/common/entities/club_entity/club_entity.dart';
import 'package:enjaz/core/common/models/club_model/club_model.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/student_clubs/data/datasources/student_clubs_remote_data_source.dart';
import 'package:enjaz/features/student_clubs/domain/repositories/student_clubs_repository_domain.dart';

@LazySingleton(as: StudentClubsRepositoryDomain)
class StudentClubsRepositoryData implements StudentClubsRepositoryDomain {
  final BaseStudentClubsRemoteDataSource remoteDataSource;

  StudentClubsRepositoryData(this.remoteDataSource);

  @override
  Future<Result<List<ClubEntity>, Failure>> getStudentClubs() async {
    try {
      final clubs = await remoteDataSource.getStudentClubs();

      final result = clubs.map((club) => club.toEntity()).toList();

      return Success(result);
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
