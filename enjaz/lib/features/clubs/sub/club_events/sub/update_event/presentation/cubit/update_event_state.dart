import 'package:equatable/equatable.dart';

abstract class UpdateEventState extends Equatable {
  const UpdateEventState();

  @override
  List<Object?> get props => [];
}

class UpdateEventInitialState extends UpdateEventState {}

class UpdateEventLoadingState extends UpdateEventState {}

class UpdateEventSuccessState extends UpdateEventState {}

class UpdateEventErrorState extends UpdateEventState {
  final String message;
  const UpdateEventErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}

