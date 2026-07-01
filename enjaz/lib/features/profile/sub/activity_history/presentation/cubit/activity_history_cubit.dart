import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/features/profile/sub/activity_history/domain/use_cases/activity_history_use_case.dart';
import 'package:enjaz/features/profile/sub/activity_history/presentation/cubit/activity_history_state.dart';

class ActivityHistoryCubit extends Cubit<ActivityHistoryState> {
  final ActivityHistoryUseCase _activityHistoryUseCase;

  ActivityHistoryCubit(this._activityHistoryUseCase)
    : super(ActivityHistoryInitialState()) {
    getActivityHistoryMethod();
  }

  Future<void> getActivityHistoryMethod() async {
    final result = await _activityHistoryUseCase.getActivityHistory();
    result.when(
      (success) {
        emit(ActivityHistorySuccessState(events: success));
      },
      (whenError) {
        emit(ActivityHistoryErrorState(message: whenError.message));
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
