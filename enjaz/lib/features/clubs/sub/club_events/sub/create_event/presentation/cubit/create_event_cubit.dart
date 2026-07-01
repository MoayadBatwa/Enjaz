import 'package:enjaz/features/clubs/sub/club_events/domain/entities/manage_event_entity.dart';
import 'package:enjaz/features/clubs/sub/club_events/sub/create_event/presentation/cubit/create_event_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/features/clubs/sub/club_events/sub/create_event/domain/use_cases/create_event_use_case.dart';

class CreateEventCubit extends Cubit<CreateEventState> {
  final CreateEventUseCase _createEventUseCase;

  CreateEventCubit(this._createEventUseCase) : super(CreateEventInitialState());

  Future<void> getCreateEventMethod({
    required ManageEventEntity newEvent,
  }) async {
    emit(CreateEventLoadingState());
    
    final result = await _createEventUseCase.getCreateEvent(newEvent: newEvent);
    result.when(
      (success) {
        emit(CreateEventSuccessState());
      },
      (whenError) {
        emit(CreateEventErrorState(message: whenError.message));
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
