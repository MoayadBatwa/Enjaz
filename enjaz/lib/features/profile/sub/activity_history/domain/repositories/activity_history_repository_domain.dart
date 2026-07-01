import 'package:enjaz/core/common/entities/event_details_entity/event_details_entity.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/failure.dart';

abstract class ActivityHistoryRepositoryDomain {
    Future<Result<List<EventDetailsEntity>, Failure>> getActivityHistory();
}
