import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/clubs/sub/club_events/domain/entities/manage_event_entity.dart';

abstract class CreateEventRepositoryDomain {
  Future<Result<bool, Failure>> getCreateEvent({
    required ManageEventEntity newEvent,
  });
}
