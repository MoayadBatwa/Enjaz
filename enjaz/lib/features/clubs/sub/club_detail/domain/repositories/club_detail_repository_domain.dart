import 'package:enjaz/core/common/entities/event_details_entity/event_details_entity.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/failure.dart';

abstract class ClubDetailRepositoryDomain {
  Future<Result<List<EventDetailsEntity>, Failure>> getClubDetail({
    required String clubId,
  });
  Future<Result<bool, Failure>> getClubEdit({required bool isEditing});
  Future<bool> isUserMember(String clubId, String userId);
}
