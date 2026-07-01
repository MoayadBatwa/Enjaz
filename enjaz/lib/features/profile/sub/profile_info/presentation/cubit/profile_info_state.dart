import 'package:enjaz/features/auth/signup/domain/major_entities/major_entity.dart';
import 'package:equatable/equatable.dart';

abstract class ProfileInfoState extends Equatable {
  const ProfileInfoState();

  @override
  List<Object?> get props => [];
}

class ProfileInfoInitialState extends ProfileInfoState {}

class ProfileInfoSuccessState extends ProfileInfoState {
  final List<MajorEntity> majors;

  const ProfileInfoSuccessState({required this.majors});
  @override
  List<Object?> get props => [majors];
}

class ProfileInfoErrorState extends ProfileInfoState {
  final String message;
  const ProfileInfoErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
