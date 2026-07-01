import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/clubs/sub/club_members/domain/entities/club_members_entity.dart';
import 'package:enjaz/features/clubs/sub/club_members/data/datasources/club_members_remote_data_source.dart';
import 'package:enjaz/features/clubs/sub/club_members/data/models/club_members_model.dart';
import 'package:enjaz/features/clubs/sub/club_members/domain/repositories/club_members_repository_domain.dart';

@LazySingleton(as: ClubMembersRepositoryDomain)
class ClubMembersRepositoryData implements ClubMembersRepositoryDomain {
  final BaseClubMembersRemoteDataSource remoteDataSource;

  ClubMembersRepositoryData(this.remoteDataSource);

  @override
  Future<Result<List<ClubMembersEntity>, Failure>> getClubMembers(
    String clubId,
  ) async {
    try {
      final members = await remoteDataSource.getClubMembers(clubId);

      return Success(members.map((member) => member.toEntity()).toList());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }

  @override
  Future<bool> isUserMember(String clubId, String userId) {
    return remoteDataSource.isUserMember(clubId, userId);
  }
}
