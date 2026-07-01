import 'package:enjaz/core/common/entities/club_entity/club_entity.dart';
import 'package:equatable/equatable.dart';

abstract class ManageClubState extends Equatable {
  const ManageClubState();

  @override
  List<Object?> get props => [];
}

class ManageClubInitialState extends ManageClubState {}

class ManageClubDeleteSuccessState extends ManageClubState {}

class ManageClubSuccessState extends ManageClubState {
  final List<ClubEntity> clubs;

  const ManageClubSuccessState({required this.clubs});
  @override
  List<Object?> get props => [clubs];
}

class ManageClubErrorState extends ManageClubState {
  final String message;
  const ManageClubErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
