import 'package:enjaz/core/common/entities/club_entity/club_entity.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/failure.dart';

abstract class StudentClubsRepositoryDomain {
  Future<Result<List<ClubEntity>, Failure>> getStudentClubs();
}
