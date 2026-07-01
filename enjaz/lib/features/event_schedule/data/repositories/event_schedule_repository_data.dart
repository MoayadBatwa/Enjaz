import 'package:enjaz/core/common/entities/event_details_entity/event_details_entity.dart';
import 'package:enjaz/core/common/models/event_details_model/event_details_model.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/event_schedule/data/datasources/event_schedule_remote_data_source.dart';
import 'package:enjaz/features/event_schedule/domain/repositories/event_schedule_repository_domain.dart';

@LazySingleton(as: EventScheduleRepositoryDomain)
class EventScheduleRepositoryData implements EventScheduleRepositoryDomain {
  final BaseEventScheduleRemoteDataSource remoteDataSource;

  EventScheduleRepositoryData(this.remoteDataSource);

  @override
  Future<Result<List<EventDetailsEntity>, Failure>> getEventSchedule({
    String? clubId,
  }) async {
    try {
      final response = await remoteDataSource.getEventSchedule(clubId: clubId);
      return Success(response.map((event) => event.toEntity()).toList());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
