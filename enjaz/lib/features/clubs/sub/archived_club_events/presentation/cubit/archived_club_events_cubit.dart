import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/features/clubs/sub/archived_club_events/domain/use_cases/archived_club_events_use_case.dart';
import 'package:enjaz/features/clubs/sub/archived_club_events/presentation/cubit/archived_club_events_state.dart';

class ArchivedClubEventsCubit extends Cubit<ArchivedClubEventsState> {
  final ArchivedClubEventsUseCase _archivedClubEventsUseCase;

  ArchivedClubEventsCubit(this._archivedClubEventsUseCase)
    : super(ArchivedClubEventsInitialState());

  Future<void> getArchivedClubEventsMethod({required String clubId}) async {
    final result = await _archivedClubEventsUseCase.getArchivedClubEvents(
      clubId: clubId,
    );
    result.when(
      (success) {
        if (isClosed) return;
        emit(ArchivedClubEventsSuccessState(events: success));
      },
      (whenError) {
        emit(ArchivedClubEventsErrorState(message: whenError.message));
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
