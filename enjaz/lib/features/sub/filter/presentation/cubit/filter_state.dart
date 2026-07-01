import 'package:equatable/equatable.dart';

abstract class FilterState extends Equatable {
  const FilterState();

  @override
  List<Object?> get props => [];
}

class FilterInitialState extends FilterState {}

class FilterSuccessState extends FilterState {}

class FilterLoadingState extends FilterState {}

class UniversitiesSuccessState extends FilterState {
  final List<dynamic> universities;
  const UniversitiesSuccessState({required this.universities});
   @override
  List<Object?> get props => [universities];
}

class FilterErrorState extends FilterState {
  final String message;
  const FilterErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
