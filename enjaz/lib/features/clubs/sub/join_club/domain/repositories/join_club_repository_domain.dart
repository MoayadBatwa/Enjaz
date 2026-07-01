import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/failure.dart';

abstract class JoinClubRepositoryDomain {
  Future<Result<String, Failure>> joinClub({required String clubId});
}
