import 'package:enjaz/features/clubs/sub/club_events/domain/entities/manage_event_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';
import 'package:enjaz/core/errors/failure.dart';

import 'package:enjaz/features/clubs/sub/club_events/sub/create_event/data/datasources/create_event_remote_data_source.dart';
import 'package:enjaz/features/clubs/sub/club_events/data/models/manage_event_model.dart';
import 'package:enjaz/features/clubs/sub/club_events/sub/create_event/domain/repositories/create_event_repository_domain.dart';

@LazySingleton(as: CreateEventRepositoryDomain)
class CreateEventRepositoryData implements CreateEventRepositoryDomain {
  final BaseCreateEventRemoteDataSource remoteDataSource;

  CreateEventRepositoryData(this.remoteDataSource);

  @override
  Future<Result<bool, Failure>> getCreateEvent({
    required ManageEventEntity newEvent,
  }) async {
    try {
      final response = await remoteDataSource.getCreateEvent(
        newEvent: ManageEventModel.fromEntity(newEvent),
      );
      return Success(response);
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
