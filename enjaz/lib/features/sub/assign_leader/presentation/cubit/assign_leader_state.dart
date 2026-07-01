import 'package:enjaz/features/sub/assign_leader/domain/entities/assign_leader_entity.dart';
import 'package:equatable/equatable.dart';

abstract class AssignLeaderState extends Equatable {
  const AssignLeaderState();

  @override
  List<Object?> get props => [];
}

class AssignLeaderInitialState extends AssignLeaderState {}

class AssignLeaderSuccessState extends AssignLeaderState {
  final List<AssignLeaderEntity> members;

  const AssignLeaderSuccessState({required this.members});
  @override
  List<Object?> get props => [members];
}

class AssignLeaderErrorState extends AssignLeaderState {
  final String message;
  const AssignLeaderErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
