import 'package:enjaz/core/common/entities/event_details_entity/event_details_entity.dart';
import 'package:enjaz/core/common/models/event_details_model/event_details_model.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/clubs/sub/club_detail/data/datasources/club_detail_remote_data_source.dart';
import 'package:enjaz/features/clubs/sub/club_detail/domain/repositories/club_detail_repository_domain.dart';

@LazySingleton(as: ClubDetailRepositoryDomain)
class ClubDetailRepositoryData implements ClubDetailRepositoryDomain {
  final BaseClubDetailRemoteDataSource remoteDataSource;
  ClubDetailRepositoryData(this.remoteDataSource);

  @override
  Future<Result<List<EventDetailsEntity>, Failure>> getClubDetail({
    required String clubId,
  }) async {
    try {
      final response = await remoteDataSource.getClubDetail(clubId: clubId);
      return Success(response.map((event) => event.toEntity()).toList());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }

  @override
  Future<Result<bool, Failure>> getClubEdit({required bool isEditing}) async {
    try {
      final response = await remoteDataSource.getClubEdit(isEditing: isEditing);
      return Success(response);
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
    @override
  Future<bool> isUserMember(String clubId, String userId) {
    return remoteDataSource.isUserMember(clubId, userId);
  }
}
