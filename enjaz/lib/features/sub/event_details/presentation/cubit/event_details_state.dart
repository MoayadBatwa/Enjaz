import 'package:equatable/equatable.dart';

abstract class EventDetailsState extends Equatable {
  const EventDetailsState();

  @override
  List<Object?> get props => [];
}

class EventDetailsInitialState extends EventDetailsState {}

class EventDetailsLoadingState extends EventDetailsState {}

class EventDetailsSuccessState extends EventDetailsState {
  final bool isEnrolled;

  const EventDetailsSuccessState({required this.isEnrolled});
}

class EventDetailsErrorState extends EventDetailsState {
  final String message;
  const EventDetailsErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}

