import 'package:enjaz/core/common/entities/user_entity/user_entity.dart';
import 'package:equatable/equatable.dart';

abstract class AssignSupervisorState extends Equatable {
  const AssignSupervisorState();

  @override
  List<Object?> get props => [];
}

class AssignSupervisorInitialState extends AssignSupervisorState {}

class AssignSupervisorSuccessState extends AssignSupervisorState {
  final List<UserEntity> supervisor;

  const AssignSupervisorSuccessState({required this.supervisor});
  @override
  List<Object?> get props => [supervisor];
}

class AssignSupervisorErrorState extends AssignSupervisorState {
  final String message;
  const AssignSupervisorErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
