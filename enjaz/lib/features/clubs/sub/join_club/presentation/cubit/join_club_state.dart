import 'package:equatable/equatable.dart';

abstract class JoinClubState extends Equatable {
  const JoinClubState();

  @override
  List<Object?> get props => [];
}

class JoinClubInitialState extends JoinClubState {}

class JoinClubSuccessState extends JoinClubState {
  final String message;

  const JoinClubSuccessState({required this.message});
}

class JoinClubLoadingState extends JoinClubState {}

class JoinClubErrorState extends JoinClubState {
  final String message;
  const JoinClubErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
