import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/failure.dart';

abstract class DeleteMemberRepositoryDomain {
  Future<Result<void, Failure>> deleteMember({
    required String clubId,
    required String userId,
  });
}