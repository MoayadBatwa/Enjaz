import 'package:enjaz/core/common/entities/club_entity/club_entity.dart';
import 'package:equatable/equatable.dart';

abstract class StudentClubsState extends Equatable {
  const StudentClubsState();

  @override
  List<Object?> get props => [];
}

class StudentClubsLoadingState extends StudentClubsState {}

class StudentClubsEmptyState extends StudentClubsState {}

class StudentClubsSuccessState extends StudentClubsState {
  final List<ClubEntity> clubs;

  const StudentClubsSuccessState({required this.clubs});

  @override
  List<Object?> get props => [clubs];
}

class StudentClubsErrorState extends StudentClubsState {
  final String message;

  const StudentClubsErrorState({required this.message});

  @override
  List<Object?> get props => [message];
}
