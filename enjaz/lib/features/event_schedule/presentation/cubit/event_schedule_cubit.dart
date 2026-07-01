import 'package:enjaz/core/common/entities/event_details_entity/event_details_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/features/event_schedule/domain/use_cases/event_schedule_use_case.dart';
import 'package:enjaz/features/event_schedule/presentation/cubit/event_schedule_state.dart';
import 'package:table_calendar/table_calendar.dart';

class EventScheduleCubit extends Cubit<EventScheduleState> {
  final EventScheduleUseCase _eventScheduleUseCase;

  EventScheduleCubit(this._eventScheduleUseCase)
    : super(EventScheduleInitialState());

  Future<void> getEventScheduleMethod({String? clubId}) async {
    final result = await _eventScheduleUseCase.getEventSchedule(clubId: clubId);
    result.when(
      (success) {
        DateTime focusedDay = DateTime.now();
        DateTime? selectedDay;
        emit(
          EventScheduleSuccessState(
            events: success,
            focusedDay: focusedDay,
            selectedDay: selectedDay ?? focusedDay,
          ),
        );
      },
      (whenError) {
        emit(EventScheduleErrorState(message: whenError.message));
      },
    );
  }

  void updateUi(
    List<EventDetailsEntity> events,
    DateTime focusedDay,
    DateTime selectedDay,
  ) {
    emit(
      EventScheduleSuccessState(
        events: events,
        focusedDay: focusedDay,
        selectedDay: selectedDay,
      ),
    );
  } 

  List<EventDetailsEntity> getEventsForDay(
    DateTime day,
    List<EventDetailsEntity> events,
  ) {
    return events.where((event) {
      return isSameDay(event.dateAt, day);
    }).toList();
  }

  void changeFormat(CalendarFormat format) {
    final current = state as EventScheduleSuccessState; 
    emit(
      EventScheduleSuccessState(
        events: current.events,
        calendarFormat: format,
        focusedDay: current.focusedDay,
        selectedDay: current.selectedDay,
      ),
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
