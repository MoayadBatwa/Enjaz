import 'package:enjaz/features/clubs/sub/club_events/data/models/manage_event_model.dart';
import 'package:enjaz/features/clubs/sub/club_events/domain/entities/manage_event_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/clubs/sub/club_events/sub/update_event/data/datasources/update_event_remote_data_source.dart';
import 'package:enjaz/features/clubs/sub/club_events/sub/update_event/domain/repositories/update_event_repository_domain.dart';

@LazySingleton(as: UpdateEventRepositoryDomain)
class UpdateEventRepositoryData implements UpdateEventRepositoryDomain{
  final BaseUpdateEventRemoteDataSource remoteDataSource;


  UpdateEventRepositoryData(this.remoteDataSource);

@override
  Future<Result<bool, Failure>> getUpdateEvent({required ManageEventEntity updatedEvent}) async {
    try {
      final response = await remoteDataSource.getUpdateEvent(updatedEvent: ManageEventModel.fromEntity(updatedEvent));
      return Success(response);
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
  
  @override
  Future<Result<void, Failure>> deleteEvent({required String eventId})async {
    try {
      final response = await remoteDataSource.deleteEvent(eventId: eventId);
      return Success(response);
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
