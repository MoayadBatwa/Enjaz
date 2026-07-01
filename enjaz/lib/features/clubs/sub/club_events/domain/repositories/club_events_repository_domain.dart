import 'package:enjaz/features/clubs/sub/club_events/domain/entities/manage_event_entity.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/failure.dart';

abstract class ClubEventsRepositoryDomain {
  Future<Result<List<ManageEventEntity>, Failure>> getClubEvents({
    required String clubId,
  });
  Future<Result<String, Failure>> createPlan({required String clubId});
}
