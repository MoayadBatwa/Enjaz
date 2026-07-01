import 'package:enjaz/features/clubs/sub/club_events/domain/entities/manage_event_entity.dart';
import 'package:equatable/equatable.dart';

abstract class ClubEventsState extends Equatable {
  const ClubEventsState();

  @override
  List<Object?> get props => [];
}

class ClubEventsInitialState extends ClubEventsState {}

class ClubEventsLoadingState extends ClubEventsState {}

class ClubEventsSuccessState extends ClubEventsState {
  final List<ManageEventEntity> clubEvents;
  final String? planId;

  const ClubEventsSuccessState({required this.clubEvents, this.planId});

  @override
  List<Object?> get props => [clubEvents];
}

class ClubEventsErrorState extends ClubEventsState {
  final String message;
  const ClubEventsErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
