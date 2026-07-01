import 'package:enjaz/core/common/entities/event_details_entity/event_details_entity.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:injectable/injectable.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/profile/sub/activity_history/domain/repositories/activity_history_repository_domain.dart';


@lazySingleton
class ActivityHistoryUseCase {
  final ActivityHistoryRepositoryDomain _repositoryData;

  ActivityHistoryUseCase(this._repositoryData);

   Future<Result<List<EventDetailsEntity>, Failure>> getActivityHistory() async {
    return _repositoryData.getActivityHistory();
  }
}
