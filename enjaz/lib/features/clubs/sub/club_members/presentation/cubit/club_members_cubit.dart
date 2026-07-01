import 'dart:async';
import 'package:enjaz/core/services/user_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/features/clubs/sub/club_members/domain/use_cases/club_members_use_case.dart';
import 'package:enjaz/features/clubs/sub/club_members/presentation/cubit/club_members_state.dart';
import 'package:get_it/get_it.dart';

class ClubMembersCubit extends Cubit<ClubMembersState> {
  final ClubMembersUseCase _clubMembersUseCase;
  final user = GetIt.I<UserService>();
  bool isMember = false;
  String get userId => user.getUser!.id;

  ClubMembersCubit(this._clubMembersUseCase) : super(ClubMembersInitialState());

  Future<void> getClubMembersMethod(String clubId) async {
    emit(ClubMembersLoadingState());

    final result = await _clubMembersUseCase.getClubMembers(clubId);

    if (!isClosed) {
      result.when(
        (success) {
          emit(
            success.isEmpty
                ? ClubMembersEmptyState()
                : ClubMembersSuccessState(members: success),
          );
        },
        (whenError) {
          emit(ClubMembersErrorState(message: whenError.message));
        },
      );
    }
  }

  Future<void> isUserMember(String clubId) async {
    final result = await _clubMembersUseCase.isUserMember(clubId, userId);

    isMember = result;
  }
}
