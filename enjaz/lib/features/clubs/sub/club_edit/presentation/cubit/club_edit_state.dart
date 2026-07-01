import 'package:equatable/equatable.dart';

abstract class ClubEditState extends Equatable {
  const ClubEditState();

  @override
  List<Object?> get props => [];
}

class ClubEditInitialState extends ClubEditState {}
class ClubEditSuccessState extends ClubEditState {}

class ClubEditLoadingState extends ClubEditState {}

class ClubEditErrorState extends ClubEditState {
  final String message;
  const ClubEditErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}

