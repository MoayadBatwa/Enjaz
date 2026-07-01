import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/clubs/sub/club_join_requests/domain/entities/club_join_requests_entity.dart';
import 'package:enjaz/features/clubs/sub/club_join_requests/data/datasources/club_join_requests_remote_data_source.dart';
import 'package:enjaz/features/clubs/sub/club_join_requests/data/models/club_join_requests_model.dart';
import 'package:enjaz/features/clubs/sub/club_join_requests/domain/repositories/club_join_requests_repository_domain.dart';

@LazySingleton(as: ClubJoinRequestsRepositoryDomain)
class ClubJoinRequestsRepositoryData
    implements ClubJoinRequestsRepositoryDomain {
  final BaseClubJoinRequestsRemoteDataSource remoteDataSource;

  ClubJoinRequestsRepositoryData(this.remoteDataSource);

  @override
  Stream<Result<List<ClubJoinRequestsEntity>, Failure>> getClubJoinRequests(
    String clubId,
  ) {
    return remoteDataSource.getClubJoinRequests(clubId).asyncMap((requests) async {
      try {
        return Success(
          requests.map((request) => request.toEntity()).toList(),
        );
      } catch (error) {
        return Error(FailureExceptions.getException(error));
      }
    });
  }

  @override
  Future<void> acceptRequest({
    required String clubId,
    required String userId,
    required String role,
  }) {
    return remoteDataSource.acceptRequest(
      clubId: clubId,
      userId: userId,
      role: role,
    );
  }

  @override
  Future<void> rejectRequest({
    required String requestId,
  }) {
    return remoteDataSource.rejectRequest(requestId: requestId);
  }
}