import 'package:equatable/equatable.dart';

abstract class EventReportState extends Equatable {
  const EventReportState();

  @override
  List<Object?> get props => [];
}

class EventReportInitialState extends EventReportState {}
class EventReportSuccessState extends EventReportState {}

class EventReportErrorState extends EventReportState {
  final String message;
  const EventReportErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}

