import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/clubs/sub/delete_member/domain/repositories/delete_member_repository_domain.dart';

@lazySingleton
class DeleteMemberUseCase {
  final DeleteMemberRepositoryDomain _repositoryData;

  DeleteMemberUseCase(this._repositoryData);

  Future<Result<void, Failure>> deleteMember({
    required String clubId,
    required String userId,
  }) {
    return _repositoryData.deleteMember(clubId: clubId, userId: userId);
  }
}
