import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/clubs/sub/club_events/domain/entities/manage_event_entity.dart';
import 'package:enjaz/features/clubs/sub/club_events/sub/create_event/domain/repositories/create_event_repository_domain.dart';

@lazySingleton
class CreateEventUseCase {
  final CreateEventRepositoryDomain _repositoryData;

  CreateEventUseCase(this._repositoryData);

  Future<Result<bool, Failure>> getCreateEvent({
    required ManageEventEntity newEvent,
  }) async {
    return _repositoryData.getCreateEvent(newEvent: newEvent);
  }
}
