import 'package:equatable/equatable.dart';

abstract class SignoutState extends Equatable {
  const SignoutState();

  @override
  List<Object?> get props => [];
}

class SignoutInitialState extends SignoutState {}

class SignoutSuccessState extends SignoutState {}

class SignoutLoadingState extends SignoutState {}

class SignoutErrorState extends SignoutState {
  final String message;
  const SignoutErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
