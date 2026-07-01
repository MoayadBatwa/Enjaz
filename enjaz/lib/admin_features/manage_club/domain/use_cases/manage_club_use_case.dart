import 'package:enjaz/core/common/entities/club_entity/club_entity.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/admin_features/manage_club/domain/repositories/manage_club_repository_domain.dart';

@lazySingleton
class ManageClubUseCase {
  final ManageClubRepositoryDomain _repositoryData;

  ManageClubUseCase(this._repositoryData);

  Future<Result<List<ClubEntity>, Failure>> getManageClub() async {
    return _repositoryData.getManageClub();
  }

  Future<Result<void, Failure>> getDeleteClubMethod({
    required String clubId,
  }) async {
    return _repositoryData.getDeleteClubMethod(clubId: clubId);
  }
}
