import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/clubs/sub/club_join_requests/domain/entities/club_join_requests_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:enjaz/features/clubs/sub/club_join_requests/domain/repositories/club_join_requests_repository_domain.dart';
import 'package:multiple_result/multiple_result.dart';

@lazySingleton
class ClubJoinRequestsUseCase {
  final ClubJoinRequestsRepositoryDomain _repositoryData;

  ClubJoinRequestsUseCase(this._repositoryData);

Stream<Result<List<ClubJoinRequestsEntity>, Failure>> getClubJoinRequests(String clubId) {
    return _repositoryData.getClubJoinRequests(clubId);
  }

  Future<void> acceptRequest({
    required String clubId,
    required String userId,
    required String role,
  }) {
    return _repositoryData.acceptRequest(
      clubId: clubId,
      userId: userId,
      role: role,
    );
  }

  Future<void> rejectRequest({required String requestId}) {
    return _repositoryData.rejectRequest(requestId: requestId);
  }
}