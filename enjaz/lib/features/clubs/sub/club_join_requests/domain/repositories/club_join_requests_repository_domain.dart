import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/clubs/sub/club_join_requests/domain/entities/club_join_requests_entity.dart';
import 'package:multiple_result/multiple_result.dart';

abstract class ClubJoinRequestsRepositoryDomain {
  Stream<Result<List<ClubJoinRequestsEntity>, Failure>> getClubJoinRequests(String clubId);

  Future<void> acceptRequest({
    required String clubId,
    required String userId,
    required String role,
  });

  Future<void> rejectRequest({required String requestId});
}