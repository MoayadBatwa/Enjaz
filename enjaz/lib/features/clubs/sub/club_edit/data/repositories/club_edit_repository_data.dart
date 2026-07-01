import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/clubs/sub/club_edit/data/datasources/club_edit_remote_data_source.dart';
import 'package:enjaz/features/clubs/sub/club_edit/domain/repositories/club_edit_repository_domain.dart';

@LazySingleton(as: ClubEditRepositoryDomain)
class ClubEditRepositoryData implements ClubEditRepositoryDomain {
  final BaseClubEditRemoteDataSource remoteDataSource;

  ClubEditRepositoryData(this.remoteDataSource);

  @override
  Future<Result<void, Failure>> getClubUpdate({
    required String edit,
    required String clubId,
    required String userId,
  }) async {
    try {
      final response = await remoteDataSource.getClubUpdate(
        edit: edit,
        clubId: clubId,
        userId: userId,
      );
      return Success(response);
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }

  @override
  Future<bool> isUserSupervisor(String clubId, String userId) {
    return remoteDataSource.isUserSupervisor(clubId, userId);
  }
}
