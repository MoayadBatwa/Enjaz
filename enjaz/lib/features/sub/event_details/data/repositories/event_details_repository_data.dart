
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/sub/event_details/data/datasources/event_details_remote_data_source.dart';
import 'package:enjaz/features/sub/event_details/domain/repositories/event_details_repository_domain.dart';

@LazySingleton(as: EventDetailsRepositoryDomain)
class EventDetailsRepositoryData implements EventDetailsRepositoryDomain{
  final BaseEventDetailsRemoteDataSource remoteDataSource;


  EventDetailsRepositoryData(this.remoteDataSource);

@override
  Future<Result<void, Failure>> getEventDetails() async {
    try {
      final response = await remoteDataSource.getEventDetails();
      return Success(response);
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }

  @override
  Future<Result<bool, Failure>> enrollInEvent({required String eventId}) async {
    try {
      final response = await remoteDataSource.enrollInEvent(eventId: eventId);
      return Success(response);
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }

  @override
  Future<Result<bool, Failure>> dropOutEvent({required String eventId}) async {
    try {
      final response = await remoteDataSource.dropOutEvent(eventId: eventId);
      return Success(response);
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }

}
