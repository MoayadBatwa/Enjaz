import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/sub/event_details/domain/repositories/event_details_repository_domain.dart';


@lazySingleton
class EventDetailsUseCase {
  final EventDetailsRepositoryDomain _repositoryData;

  EventDetailsUseCase(this._repositoryData);

   Future<Result<void, Failure>> getEventDetails() async {
    return _repositoryData.getEventDetails();
  }

  
  Future<Result<bool, Failure>> enrollInEvent({required String eventId}) async {
    return _repositoryData.enrollInEvent(eventId: eventId);
  }

  Future<Result<bool, Failure>> dropOutEvent({required String eventId}) async {
    return _repositoryData.dropOutEvent(eventId: eventId);
  }
}
