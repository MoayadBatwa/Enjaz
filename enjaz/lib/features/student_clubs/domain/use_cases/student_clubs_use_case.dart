import 'package:enjaz/core/common/entities/club_entity/club_entity.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/features/student_clubs/domain/repositories/student_clubs_repository_domain.dart';

@lazySingleton
class StudentClubsUseCase {
  final StudentClubsRepositoryDomain _repositoryData;

  StudentClubsUseCase(this._repositoryData);

  Future<Result<List<ClubEntity>, Failure>> getStudentClubs() {
    return _repositoryData.getStudentClubs();
  }
}
