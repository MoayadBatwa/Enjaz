import 'package:enjaz/features/clubs/sub/club_events/domain/entities/manage_event_entity.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/clubs/sub/club_events/domain/repositories/club_events_repository_domain.dart';

@lazySingleton
class ClubEventsUseCase {
  final ClubEventsRepositoryDomain _repositoryData;

  ClubEventsUseCase(this._repositoryData);

  Future<Result<List<ManageEventEntity>, Failure>> getClubEvents({
    required String clubId,
  }) async {
    return _repositoryData.getClubEvents(clubId: clubId);
  }

  Future<Result<String, Failure>> createPlan({required String clubId}) async {
    return _repositoryData.createPlan(clubId: clubId);
  }
}
