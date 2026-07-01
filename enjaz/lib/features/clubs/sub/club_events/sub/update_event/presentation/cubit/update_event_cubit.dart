import 'package:enjaz/features/clubs/sub/club_events/domain/entities/manage_event_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/features/clubs/sub/club_events/sub/update_event/domain/use_cases/update_event_use_case.dart';
import 'package:enjaz/features/clubs/sub/club_events/sub/update_event/presentation/cubit/update_event_state.dart';

class UpdateEventCubit extends Cubit<UpdateEventState> {
  final UpdateEventUseCase _updateEventUseCase;

  UpdateEventCubit(this._updateEventUseCase) : super(UpdateEventInitialState());

  Future<void> getUpdateEventMethod({
    required ManageEventEntity updatedEvent,
  }) async {
    emit(UpdateEventLoadingState());

    final result = await _updateEventUseCase.getUpdateEvent(
      updatedEvent: updatedEvent,
    );
    result.when(
      (success) {
        if (isClosed) return;
        emit(UpdateEventSuccessState());
      },
      (whenError) {
        emit(UpdateEventErrorState(message: whenError.message));
      },
    );
  }

  Future<void> getDeleteEventMethod({required String eventId}) async {
    emit(UpdateEventLoadingState());

    final result = await _updateEventUseCase.deleteEvent(eventId: eventId);
    result.when(
      (success) {
        emit(UpdateEventSuccessState());
      },
      (whenError) {
        emit(UpdateEventErrorState(message: whenError.message));
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
