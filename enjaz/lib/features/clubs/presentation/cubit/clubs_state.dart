import 'package:enjaz/core/common/entities/club_entity/club_entity.dart';
import 'package:equatable/equatable.dart';

abstract class ClubsState extends Equatable {
  const ClubsState();

  @override
  List<Object?> get props => [];
}

class ClubsInitialState extends ClubsState {}

class ClubsSuccessState extends ClubsState {
  final List<ClubEntity> clubs;
  const ClubsSuccessState({required this.clubs});
  @override
  List<Object?> get props => [clubs];
}

class ClubsLoadingState extends ClubsState {}

class ClubsFilterSuccessState extends ClubsState {
  final List<ClubEntity> clubs;
  const ClubsFilterSuccessState({required this.clubs});
  @override
  List<Object?> get props => [clubs];
}

class ClubsErrorState extends ClubsState {
  final String message;
  const ClubsErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
