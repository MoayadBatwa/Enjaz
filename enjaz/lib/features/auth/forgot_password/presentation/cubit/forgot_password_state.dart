import 'package:equatable/equatable.dart';

abstract class ForgotPasswordState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ForgotPasswordInitialState extends ForgotPasswordState {}

class ForgotPasswordLoadingState extends ForgotPasswordState {}

class ForgotPasswordEmailSentState extends ForgotPasswordState {}

class ForgotPasswordSuccessState extends ForgotPasswordState {}

class ForgotPasswordErrorState extends ForgotPasswordState {
  final String message;

  ForgotPasswordErrorState({required this.message});

  @override
  List<Object?> get props => [message];
}
