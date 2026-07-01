import 'package:enjaz/core/common/entities/event_details_entity/event_details_entity.dart';
import 'package:equatable/equatable.dart';

abstract class EventsState extends Equatable {
  const EventsState();

  @override
  List<Object?> get props => [];
}

class EventsInitialState extends EventsState {}

class EventsLoadingState extends EventsState {}

class EventsSuccessState extends EventsState {
  final List<EventDetailsEntity> joinedEvents;
  final List<EventDetailsEntity> browseEvents;

  const EventsSuccessState({required this.joinedEvents, required this.browseEvents});

  @override
  List<Object?> get props => [joinedEvents, browseEvents];
}

class EventsErrorState extends EventsState {
  final String message;
  const EventsErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
