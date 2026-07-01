import 'package:enjaz/core/common/entities/event_details_entity/event_details_entity.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/events/domain/repositories/events_repository_domain.dart';

@lazySingleton
class EventsUseCase {
  final EventsRepositoryDomain _repositoryData;

  EventsUseCase(this._repositoryData);

  Stream<Result<List<EventDetailsEntity>, Failure>> getEvents() {
    return _repositoryData.getEvents();
  }
}
