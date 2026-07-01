import 'package:equatable/equatable.dart';

abstract class AdminPanelState extends Equatable {
  const AdminPanelState();

  @override
  List<Object?> get props => [];
}

class AdminPanelInitialState extends AdminPanelState {}
class AdminPanelSuccessState extends AdminPanelState {}

class AdminPanelErrorState extends AdminPanelState {
  final String message;
  const AdminPanelErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}

