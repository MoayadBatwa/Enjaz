import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/features/clubs/sub/club_events/domain/use_cases/club_events_use_case.dart';
import 'package:enjaz/features/clubs/sub/club_events/presentation/cubit/club_events_state.dart';

class ClubEventsCubit extends Cubit<ClubEventsState> {
  final ClubEventsUseCase _clubEventsUseCase;

  ClubEventsCubit(this._clubEventsUseCase) : super(ClubEventsInitialState());

  Future<void> getClubEventsMethod({required String clubId}) async {
    emit(ClubEventsLoadingState());

    final result = await _clubEventsUseCase.getClubEvents(clubId: clubId);

    result.when(
      (success) async {
        if (success.isEmpty) {
          final createdPlanId = await createPlan(clubId: clubId);
          emit(
            ClubEventsSuccessState(clubEvents: success, planId: createdPlanId),
          );
          return;
        }
        emit(ClubEventsSuccessState(clubEvents: success));
      },
      (whenError) {
        emit(ClubEventsErrorState(message: whenError.message));
      },
    );
  }

  Future<String> createPlan({required String clubId}) async {
    emit(ClubEventsLoadingState());

    final result = await _clubEventsUseCase.createPlan(clubId: clubId);

    String planId = "UnKnown";

    result.when(
      (success) {
        planId = success;
        return success;
      },
      (whenError) {
        emit(ClubEventsErrorState(message: whenError.message));
      },
    );
    return planId;
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
