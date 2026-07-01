import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/clubs/sub/club_edit/domain/repositories/club_edit_repository_domain.dart';

@lazySingleton
class ClubEditUseCase {
  final ClubEditRepositoryDomain _repositoryData;

  ClubEditUseCase(this._repositoryData);

  Future<Result<void, Failure>> getClubUpdate({
    required String edit,
    required String clubId,
    required String userId,
  }) async {
    return _repositoryData.getClubUpdate(
      edit: edit,
      clubId: clubId,
      userId: userId,
    );
  }

  Future<bool> isUserSupervisor(String clubId, String userId) {
    return _repositoryData.isUserSupervisor(clubId, userId);
  }
}
