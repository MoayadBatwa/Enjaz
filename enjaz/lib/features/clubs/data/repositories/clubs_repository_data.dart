import 'package:enjaz/core/common/models/club_model/club_model.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/core/common/entities/club_entity/club_entity.dart';
import 'package:enjaz/features/clubs/data/datasources/clubs_remote_data_source.dart';
import 'package:enjaz/features/clubs/domain/repositories/clubs_repository_domain.dart';

@LazySingleton(as: ClubRepositoryDomain)
class ClubsRepositoryData implements ClubRepositoryDomain {
  final BaseClubsRemoteDataSource remoteDataSource;
  ClubsRepositoryData(this.remoteDataSource);

  @override
  Stream<Result<List<ClubEntity>, Failure>> getClubs() {
    // final response = await remoteDataSource.getClubs();
    // return Success(response.map((club) => club.toEntity()).toList());

    return remoteDataSource
        .getClubs()
        .map<Result<List<ClubEntity>, Failure>>(
          (data) => (Success(data.map((clubs) => clubs.toEntity()).toList())),
        )
        .handleError((onError) {
          return Error(FailureExceptions.getException(onError));
        });
  }

  @override
  Future<Result<List<ClubEntity>, Failure>> getClubsFilterMethod({
    required String search,
  }) async {
    try {
      final response = await remoteDataSource.getClubsFilterMethod(
        search: search,
      );
      return Success(response.map((club) => club.toEntity()).toList());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
  
  
}
