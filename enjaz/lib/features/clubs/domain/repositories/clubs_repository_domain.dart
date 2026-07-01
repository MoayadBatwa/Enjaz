import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/core/common/entities/club_entity/club_entity.dart';

abstract class ClubRepositoryDomain {
  Stream<Result<List<ClubEntity>, Failure>> getClubs();
  Future<Result<List<ClubEntity>, Failure>> getClubsFilterMethod({
    required String search,
  });
}
