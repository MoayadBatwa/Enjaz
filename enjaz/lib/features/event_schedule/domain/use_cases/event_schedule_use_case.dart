import 'package:enjaz/core/common/entities/event_details_entity/event_details_entity.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/event_schedule/domain/repositories/event_schedule_repository_domain.dart';

@lazySingleton
class EventScheduleUseCase {
  final EventScheduleRepositoryDomain _repositoryData;

  EventScheduleUseCase(this._repositoryData);

  Future<Result<List<EventDetailsEntity>, Failure>> getEventSchedule({
    String? clubId,
  }) async {
    return _repositoryData.getEventSchedule(clubId: clubId);
  }
}
