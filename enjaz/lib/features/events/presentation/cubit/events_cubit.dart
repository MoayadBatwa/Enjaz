import 'package:enjaz/core/common/entities/event_details_entity/event_details_entity.dart';
import 'package:enjaz/core/services/user_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/features/events/domain/use_cases/events_use_case.dart';
import 'package:enjaz/features/events/presentation/cubit/events_state.dart';
import 'package:get_it/get_it.dart';

class EventsCubit extends Cubit<EventsState> {
  final EventsUseCase _eventsUseCase;
  final UserService user;
  final userRole = GetIt.I<UserService>();

  List<EventDetailsEntity> joinedEvents = [];
  List<EventDetailsEntity> browseEvents = [];

  EventsCubit(this._eventsUseCase, this.user) : super(EventsInitialState()) {
    getEventsMethod();
  }

  void getEventsMethod() {
    emit(EventsLoadingState());

    _eventsUseCase.getEvents().listen((onData) {
      onData.when(
        (success) {
          if (isClosed) return;
          // List A: My registered events
          joinedEvents = success
              .where((event) => event.isEnrolled == true)
              .toList();

          // List B: Explore new events
          browseEvents = success
              .where((event) => event.isEnrolled == false)
              .toList();
          emit(
            EventsSuccessState(
              joinedEvents: joinedEvents,
              browseEvents: browseEvents,
            ),
          );
        },
        (whenError) {
          emit(EventsErrorState(message: whenError.message));
        },
      );
    });
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
