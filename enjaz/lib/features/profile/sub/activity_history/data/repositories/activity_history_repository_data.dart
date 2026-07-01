import 'package:enjaz/core/common/entities/event_details_entity/event_details_entity.dart';
import 'package:enjaz/core/common/models/event_details_model/event_details_model.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/profile/sub/activity_history/data/datasources/activity_history_remote_data_source.dart';
import 'package:enjaz/features/profile/sub/activity_history/domain/repositories/activity_history_repository_domain.dart';

@LazySingleton(as: ActivityHistoryRepositoryDomain)
class ActivityHistoryRepositoryData implements ActivityHistoryRepositoryDomain {
  final BaseActivityHistoryRemoteDataSource remoteDataSource;

  ActivityHistoryRepositoryData(this.remoteDataSource);

  @override
  Future<Result<List<EventDetailsEntity>, Failure>> getActivityHistory() async {
    try {
      final response = await remoteDataSource.getActivityHistory();
      return Success(
        response
            .where((event) => DateTime.now().isAfter(event.dateAt))
            .map((event) => event.toEntity())
            .toList(),
      );
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
