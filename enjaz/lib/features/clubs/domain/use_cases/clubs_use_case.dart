import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/core/common/entities/club_entity/club_entity.dart';
import 'package:enjaz/features/clubs/domain/repositories/clubs_repository_domain.dart';

@lazySingleton
class ClubUseCase {
  final ClubRepositoryDomain _repositoryData;

  ClubUseCase(this._repositoryData);

  Stream<Result<List<ClubEntity>, Failure>> getClubs() {
    return _repositoryData.getClubs();
  }

  Future<Result<List<ClubEntity>, Failure>> getClubsFilterMethod({
    required String search,
  }) async {
    return _repositoryData.getClubsFilterMethod(search: search);
  }
}
