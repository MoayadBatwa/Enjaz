import 'package:enjaz/core/common/entities/university_entity/university_entity.dart';
import 'package:equatable/equatable.dart';

abstract class UniversityDetailsState extends Equatable {
  const UniversityDetailsState();

  @override
  List<Object?> get props => [];
}

class UniversityDetailsInitialState extends UniversityDetailsState {}

class UniversityDetailsSuccessState extends UniversityDetailsState {
  final UniversityEntity university;

  const UniversityDetailsSuccessState({required this.university});

  @override
  List<Object?> get props => [university];
}

class UniversityDetailsLoadingState extends UniversityDetailsState {}

class UniversityDetailsErrorState extends UniversityDetailsState {
  final String message;
  const UniversityDetailsErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
