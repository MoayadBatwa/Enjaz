import 'package:equatable/equatable.dart';

abstract class AddUniversityState extends Equatable {
  const AddUniversityState();

  @override
  List<Object?> get props => [];
}

class AddUniversityInitialState extends AddUniversityState {}

class AddUniversitySuccessState extends AddUniversityState {}

class AddUniversityLoadingState extends AddUniversityState {}

class AddUniversityErrorState extends AddUniversityState {
  final String message;
  const AddUniversityErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
