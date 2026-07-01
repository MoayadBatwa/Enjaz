import 'package:enjaz/features/clubs/sub/club_events/data/models/manage_event_model.dart';
import 'package:enjaz/features/clubs/sub/club_events/domain/entities/manage_event_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/clubs/sub/club_events/data/datasources/club_events_remote_data_source.dart';
import 'package:enjaz/features/clubs/sub/club_events/domain/repositories/club_events_repository_domain.dart';

@LazySingleton(as: ClubEventsRepositoryDomain)
class ClubEventsRepositoryData implements ClubEventsRepositoryDomain {
  final BaseClubEventsRemoteDataSource remoteDataSource;

  ClubEventsRepositoryData(this.remoteDataSource);

  @override
  Future<Result<List<ManageEventEntity>, Failure>> getClubEvents({
    required String clubId,
  }) async {
    try {
      final response = await remoteDataSource.getClubEvents(clubId: clubId);
      return Success(response.map((item) => item.toEntity()).toList());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }

  @override
  Future<Result<String, Failure>> createPlan({required String clubId}) async {
    try {
      final response = await remoteDataSource.createPlan(clubId: clubId);
      return Success(response);
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
