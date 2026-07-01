import 'package:equatable/equatable.dart';

abstract class DeleteMemberState extends Equatable {
  const DeleteMemberState();

  @override
  List<Object?> get props => [];
}

class DeleteMemberInitialState extends DeleteMemberState {}

class DeleteMemberSuccessState extends DeleteMemberState {}

class DeleteMemberLoadingState extends DeleteMemberState {}

class DeleteMemberErrorState extends DeleteMemberState {
  final String message;
  const DeleteMemberErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
