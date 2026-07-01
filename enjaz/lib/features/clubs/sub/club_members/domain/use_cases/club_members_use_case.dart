import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/clubs/sub/club_members/domain/entities/club_members_entity.dart';
import 'package:enjaz/features/clubs/sub/club_members/domain/repositories/club_members_repository_domain.dart';

@lazySingleton
class ClubMembersUseCase {
  final ClubMembersRepositoryDomain _repositoryData;

  ClubMembersUseCase(this._repositoryData);

  Future<Result<List<ClubMembersEntity>, Failure>> getClubMembers(
    String clubId,
  ) {
    return _repositoryData.getClubMembers(clubId);
  }

  Future<bool> isUserMember(String clubId, String userId) {
    return _repositoryData.isUserMember(clubId, userId);
  }
}
