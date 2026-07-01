import 'package:enjaz/core/services/user_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/features/sub/event_details/domain/use_cases/event_details_use_case.dart';
import 'package:enjaz/features/sub/event_details/presentation/cubit/event_details_state.dart';
import 'package:get_it/get_it.dart';

class EventDetailsCubit extends Cubit<EventDetailsState> {
  final EventDetailsUseCase _eventDetailsUseCase;
  final user = GetIt.I<UserService>();

  EventDetailsCubit(this._eventDetailsUseCase) : super(EventDetailsInitialState());

  Future<void> enrollInEvent({required String eventId}) async {
    emit(EventDetailsLoadingState());
    final result = await _eventDetailsUseCase.enrollInEvent(eventId: eventId);
    result.when(
      (success) {
        emit(EventDetailsSuccessState(isEnrolled: success));
      },
      (whenError) {
       emit(EventDetailsErrorState(message: whenError.message));
      },
    );
  }

  Future<void> dropOutEvent({required String eventId}) async {
    emit(EventDetailsLoadingState());
    final result = await _eventDetailsUseCase.dropOutEvent(eventId: eventId);
    result.when(
      (success) {
        emit(EventDetailsSuccessState(isEnrolled: success));
      },
      (whenError) {
       emit(EventDetailsErrorState(message: whenError.message));
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
