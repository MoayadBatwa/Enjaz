import 'package:enjaz/core/common/entities/event_details_entity/event_details_entity.dart';
import 'package:equatable/equatable.dart';

abstract class ActivityHistoryState extends Equatable {
  const ActivityHistoryState();

  @override
  List<Object?> get props => [];
}

class ActivityHistoryInitialState extends ActivityHistoryState {}

class ActivityHistorySuccessState extends ActivityHistoryState {
  final List<EventDetailsEntity> events;

  const ActivityHistorySuccessState({required this.events});
   @override
  List<Object?> get props => [events];
}

class ActivityHistoryErrorState extends ActivityHistoryState {
  final String message;
  const ActivityHistoryErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
