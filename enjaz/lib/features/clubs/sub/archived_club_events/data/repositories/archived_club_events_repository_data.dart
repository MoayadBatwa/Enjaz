

import 'package:enjaz/features/clubs/sub/archived_club_events/data/models/archived_club_events_model.dart';
import 'package:enjaz/features/clubs/sub/archived_club_events/domain/entities/archived_club_events_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/clubs/sub/archived_club_events/data/datasources/archived_club_events_remote_data_source.dart';
import 'package:enjaz/features/clubs/sub/archived_club_events/domain/repositories/archived_club_events_repository_domain.dart';

@LazySingleton(as: ArchivedClubEventsRepositoryDomain)
class ArchivedClubEventsRepositoryData implements ArchivedClubEventsRepositoryDomain{
  final BaseArchivedClubEventsRemoteDataSource remoteDataSource;


  ArchivedClubEventsRepositoryData(this.remoteDataSource);

@override
  Future<Result<List<ArchivedClubEventsEntity>, Failure>> getArchivedClubEvents({required String clubId}) async {
    try {
      final response = await remoteDataSource.getArchivedClubEvents(clubId: clubId);
      return Success(response.map((event) => event.toEntity()).toList());
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
