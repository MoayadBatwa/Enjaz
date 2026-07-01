import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/failure.dart';

abstract class ClubEditRepositoryDomain {
  Future<Result<void, Failure>> getClubUpdate({
    required String edit,
    required String clubId,
    required String userId,
  });
   Future<bool> isUserSupervisor(String clubId, String userId);
}
