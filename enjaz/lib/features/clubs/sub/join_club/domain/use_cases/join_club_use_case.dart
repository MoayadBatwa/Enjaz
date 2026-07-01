import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/clubs/sub/join_club/domain/repositories/join_club_repository_domain.dart';

@lazySingleton
class JoinClubUseCase {
  final JoinClubRepositoryDomain _repositoryData;

  JoinClubUseCase(this._repositoryData);

  Future<Result<String, Failure>> joinClub({required String clubId}) async {
    return _repositoryData.joinClub(clubId: clubId);
  }
}
