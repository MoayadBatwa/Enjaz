import 'package:enjaz/core/common/entities/event_details_entity/event_details_entity.dart';
import 'package:equatable/equatable.dart';

abstract class ClubDetailState extends Equatable {
  const ClubDetailState();

  @override
  List<Object?> get props => [];
}

class ClubDetailInitialState extends ClubDetailState {}

class ClubDetailSuccessState extends ClubDetailState {
  final List<EventDetailsEntity> events;
  const ClubDetailSuccessState({required this.events});
  @override
  List<Object?> get props => [events];
}


class ClubEditSuccessState extends ClubDetailState {
  final bool editing;
  const ClubEditSuccessState({required this.editing});
  @override
  List<Object?> get props => [editing];
}

class ClubDetailErrorState extends ClubDetailState {
  final String message;
  const ClubDetailErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
