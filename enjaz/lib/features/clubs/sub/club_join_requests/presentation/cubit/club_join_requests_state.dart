import 'package:equatable/equatable.dart';
import 'package:enjaz/features/clubs/sub/club_join_requests/domain/entities/club_join_requests_entity.dart';

abstract class ClubJoinRequestsState extends Equatable {
  const ClubJoinRequestsState();

  @override
  List<Object?> get props => [];
}

class ClubJoinRequestsInitialState extends ClubJoinRequestsState {}

class ClubJoinRequestsLoadingState extends ClubJoinRequestsState {}
class ClubJoinRequestsEmptyState extends ClubJoinRequestsState {}

class ClubJoinRequestsSuccessState extends ClubJoinRequestsState {
  final List<ClubJoinRequestsEntity> requests;

  const ClubJoinRequestsSuccessState({required this.requests});

  @override
  List<Object?> get props => [requests];
}

class ClubJoinRequestsErrorState extends ClubJoinRequestsState {
  final String message;

  const ClubJoinRequestsErrorState({required this.message});

  @override
  List<Object?> get props => [message];
}
