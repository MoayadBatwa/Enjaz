import 'package:enjaz/features/clubs/sub/club_events/domain/entities/manage_event_entity.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/failure.dart';

abstract class UpdateEventRepositoryDomain {
  Future<Result<bool, Failure>> getUpdateEvent({
    required ManageEventEntity updatedEvent,
  });
  Future<Result<void, Failure>> deleteEvent({required String eventId});
}
