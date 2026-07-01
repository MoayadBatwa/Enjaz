import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/failure.dart';

abstract class EventDetailsRepositoryDomain {
    Future<Result<void, Failure>> getEventDetails();
    Future<Result<bool, Failure>> enrollInEvent({required String eventId});
    Future<Result<bool, Failure>> dropOutEvent({required String eventId});
}
