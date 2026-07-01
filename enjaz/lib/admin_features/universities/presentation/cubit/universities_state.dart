import 'package:enjaz/core/common/entities/university_entity/university_entity.dart';
import 'package:equatable/equatable.dart';

abstract class UniversitiesState extends Equatable {
  const UniversitiesState();

  @override
  List<Object?> get props => [];
}

class UniversitiesInitialState extends UniversitiesState {}

class UniversitiesSuccessState extends UniversitiesState {
  final List<UniversityEntity> universities;

  const UniversitiesSuccessState({required this.universities});

  @override
  List<Object?> get props => [universities];
}

class UniversitiesLoadingState extends UniversitiesState {}

class UniversitiesErrorState extends UniversitiesState {
  final String message;
  const UniversitiesErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
