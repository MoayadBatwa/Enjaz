import 'package:enjaz/core/common/entities/club_entity/club_entity.dart';
import 'package:enjaz/core/common/models/club_model/club_model.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/admin_features/manage_club/data/datasources/manage_club_remote_data_source.dart';
import 'package:enjaz/admin_features/manage_club/domain/repositories/manage_club_repository_domain.dart';

@LazySingleton(as: ManageClubRepositoryDomain)
class ManageClubRepositoryData implements ManageClubRepositoryDomain {
  final BaseManageClubRemoteDataSource remoteDataSource;

  ManageClubRepositoryData(this.remoteDataSource);

  @override
  Future<Result<List<ClubEntity>, Failure>> getManageClub() async {
    try {
      final response = await remoteDataSource.getManageClub();
      return Success(response.map((club) => club.toEntity()).toList());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }

  @override
  Future<Result<void, Failure>> getDeleteClubMethod({
    required String clubId,
  }) async {
    try {
      final response = await remoteDataSource.getDeleteClubMethod(
        clubId: clubId,
      );
      return Success(response);
    } catch (error) {
      print(error);
      return Error(FailureExceptions.getException(error));
    }
  }
}
