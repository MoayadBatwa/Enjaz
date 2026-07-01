import 'package:enjaz/features/clubs/sub/club_events/domain/entities/manage_event_entity.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/clubs/sub/club_events/sub/update_event/domain/repositories/update_event_repository_domain.dart';

@lazySingleton
class UpdateEventUseCase {
  final UpdateEventRepositoryDomain _repositoryData;

  UpdateEventUseCase(this._repositoryData);

  Future<Result<bool, Failure>> getUpdateEvent({
    required ManageEventEntity updatedEvent,
  }) async {
    return _repositoryData.getUpdateEvent(updatedEvent: updatedEvent);
  }

  Future<Result<void, Failure>> deleteEvent({required String eventId}) async {
    return _repositoryData.deleteEvent(eventId: eventId);
  }
}
