import 'package:enjaz/features/clubs/sub/archived_club_events/domain/entities/archived_club_events_entity.dart';
import 'package:equatable/equatable.dart';

abstract class ArchivedClubEventsState extends Equatable {
  const ArchivedClubEventsState();

  @override
  List<Object?> get props => [];
}

class ArchivedClubEventsInitialState extends ArchivedClubEventsState {}

class ArchivedClubEventsSuccessState extends ArchivedClubEventsState {
  final List<ArchivedClubEventsEntity> events;
  const ArchivedClubEventsSuccessState({required this.events});
  @override
  List<Object?> get props => [events];
}

class ArchivedClubEventsErrorState extends ArchivedClubEventsState {
  final String message;
  const ArchivedClubEventsErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
