import 'package:enjaz/features/clubs/sub/archived_club_events/domain/entities/archived_club_events_entity.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/failure.dart';

abstract class ArchivedClubEventsRepositoryDomain {
    Future<Result<List<ArchivedClubEventsEntity>, Failure>> getArchivedClubEvents({required String clubId});
}
