import 'package:enjaz/features/clubs/sub/archived_club_events/domain/entities/archived_club_events_entity.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/clubs/sub/archived_club_events/domain/repositories/archived_club_events_repository_domain.dart';


@lazySingleton
class ArchivedClubEventsUseCase {
  final ArchivedClubEventsRepositoryDomain _repositoryData;

  ArchivedClubEventsUseCase(this._repositoryData);

   Future<Result<List<ArchivedClubEventsEntity>, Failure>> getArchivedClubEvents({required String clubId}) async {
    return _repositoryData.getArchivedClubEvents(clubId: clubId );
  }
}
