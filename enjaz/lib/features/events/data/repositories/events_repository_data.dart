import 'package:enjaz/core/common/entities/event_details_entity/event_details_entity.dart';
import 'package:enjaz/core/common/models/event_details_model/event_details_model.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/events/data/datasources/events_remote_data_source.dart';
import 'package:enjaz/features/events/domain/repositories/events_repository_domain.dart';

@LazySingleton(as: EventsRepositoryDomain)
class EventsRepositoryData implements EventsRepositoryDomain {
  final BaseEventsRemoteDataSource remoteDataSource;

  EventsRepositoryData(this.remoteDataSource);

  @override
  Stream<Result<List<EventDetailsEntity>, Failure>> getEvents() {
    return remoteDataSource
        .getEvents()
        .map<Result<List<EventDetailsEntity>, Failure>>(
          (data) => Success(data.map((event) => event.toEntity()).toList()),
        )
        .handleError((error) {
          return Error(FailureExceptions.getException(error));
        });
  }
}
