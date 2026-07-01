import 'package:enjaz/features/clubs/sub/club_members/domain/entities/club_members_entity.dart';
import 'package:equatable/equatable.dart';

abstract class ClubMembersState extends Equatable {
  const ClubMembersState();

  @override
  List<Object?> get props => [];
}

class ClubMembersInitialState extends ClubMembersState {}

class ClubMembersLoadingState extends ClubMembersState {}

class ClubMembersEmptyState extends ClubMembersState {}

class ClubMembersSuccessState extends ClubMembersState {
  final List<ClubMembersEntity> members;

  const ClubMembersSuccessState({required this.members});

  @override
  List<Object?> get props => [members];
}

class ClubMembersErrorState extends ClubMembersState {
  final String message;
  const ClubMembersErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}
