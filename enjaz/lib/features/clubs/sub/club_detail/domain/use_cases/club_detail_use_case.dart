import 'package:enjaz/core/common/entities/event_details_entity/event_details_entity.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/clubs/sub/club_detail/domain/repositories/club_detail_repository_domain.dart';

@lazySingleton
class ClubDetailUseCase {
  final ClubDetailRepositoryDomain _repositoryData;

  ClubDetailUseCase(this._repositoryData);

  Future<Result<List<EventDetailsEntity>, Failure>> getClubDetail({
    required String clubId,
  }) async {
    return _repositoryData.getClubDetail(clubId: clubId);
  }

  Future<Result<bool, Failure>> getClubEdit({required bool isEditing}) async {
    return _repositoryData.getClubEdit(isEditing: isEditing);
  }

  Future<bool> isUserMember(String clubId, String userId) {
    return _repositoryData.isUserMember(clubId, userId);
  }
}
