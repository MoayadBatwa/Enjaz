import 'package:equatable/equatable.dart';

abstract class CreateEventState extends Equatable {
  const CreateEventState();

  @override
  List<Object?> get props => [];
}

class CreateEventInitialState extends CreateEventState {}

class CreateEventLoadingState extends CreateEventState {}

class CreateEventSuccessState extends CreateEventState {}

class CreateEventErrorState extends CreateEventState {
  final String message;
  const CreateEventErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
