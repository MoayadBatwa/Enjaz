import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/clubs/sub/club_members/domain/entities/club_members_entity.dart';

abstract class ClubMembersRepositoryDomain {
  Future<Result<List<ClubMembersEntity>, Failure>> getClubMembers(
    String clubId,
  );

  Future<bool> isUserMember(String clubId, String userId);
}
