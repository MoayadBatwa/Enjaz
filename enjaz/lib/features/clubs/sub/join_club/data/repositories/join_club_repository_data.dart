
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';
import 'package:enjaz/core/errors/failure.dart';

import 'package:enjaz/features/clubs/sub/join_club/data/datasources/join_club_remote_data_source.dart';
import 'package:enjaz/features/clubs/sub/join_club/domain/repositories/join_club_repository_domain.dart';

@LazySingleton(as: JoinClubRepositoryDomain)
class JoinClubRepositoryData implements JoinClubRepositoryDomain{
  final BaseJoinClubRemoteDataSource remoteDataSource;


  JoinClubRepositoryData(this.remoteDataSource);

 @override
  Future<Result<String, Failure>> joinClub({required String clubId}) async {
    try {
      final response = await remoteDataSource.joinClub(clubId: clubId);

      return Success(response);
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
