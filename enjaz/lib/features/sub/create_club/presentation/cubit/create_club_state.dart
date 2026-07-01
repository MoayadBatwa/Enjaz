import 'package:equatable/equatable.dart';

abstract class CreateClubState extends Equatable {
  const CreateClubState();

  @override
  List<Object?> get props => [];
}

class CreateClubInitialState extends CreateClubState {}

class CreateClubSuccessState extends CreateClubState {}

class CreateClubLoadingState extends CreateClubState {}

class CreateClubSpecificUniversityState extends CreateClubState {
  final String universityId;

  const CreateClubSpecificUniversityState({required this.universityId});
  @override
  List<Object?> get props => [universityId];
}

class CreateClubErrorState extends CreateClubState {
  final String message;
  const CreateClubErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
