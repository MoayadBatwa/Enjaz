import 'package:enjaz/core/common/entities/event_details_entity/event_details_entity.dart';
import 'package:equatable/equatable.dart';
import 'package:table_calendar/table_calendar.dart';

abstract class EventScheduleState extends Equatable {
  const EventScheduleState();

  @override
  List<Object?> get props => [];
}

class EventScheduleInitialState extends EventScheduleState {}

class EventScheduleSuccessState extends EventScheduleState {
  final List<EventDetailsEntity> events;
  final DateTime focusedDay;
  final DateTime selectedDay;
  final CalendarFormat? calendarFormat;

  const EventScheduleSuccessState({
    required this.events,
    required this.focusedDay,
    required this.selectedDay,
    this.calendarFormat,
  });
  @override
  List<Object?> get props => [events, focusedDay, selectedDay,calendarFormat];
}

class EventScheduleErrorState extends EventScheduleState {
  final String message;
  const EventScheduleErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
