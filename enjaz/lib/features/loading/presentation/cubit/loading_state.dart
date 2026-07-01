import 'package:enjaz/features/loading/domain/entities/loading_entity.dart';
import 'package:equatable/equatable.dart';

abstract class LoadingState extends Equatable {
  const LoadingState();

  @override
  List<Object?> get props => [];
}

class LoadingInitialState extends LoadingState {}

class LoadingSuccessState extends LoadingState {
  final LoadingEntity isLogging;
  const LoadingSuccessState({required this.isLogging});
  @override
  List<Object?> get props => [isLogging];
}

class LoadingCheckingState extends LoadingState {}

class LoadingErrorState extends LoadingState {
  final String message;
  const LoadingErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
