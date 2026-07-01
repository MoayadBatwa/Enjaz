import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/features/clubs/sub/club_join_requests/domain/use_cases/club_join_requests_use_case.dart';
import 'package:enjaz/features/clubs/sub/club_join_requests/presentation/cubit/club_join_requests_state.dart';

class ClubJoinRequestsCubit extends Cubit<ClubJoinRequestsState> {
  final ClubJoinRequestsUseCase _clubJoinRequestsUseCase;

  ClubJoinRequestsCubit(this._clubJoinRequestsUseCase)
    : super(ClubJoinRequestsInitialState());

  StreamSubscription? _subscription;
  String? _currentClubId;

  void getClubJoinRequestsMethod(String clubId) {
    _currentClubId = clubId;

    emit(ClubJoinRequestsLoadingState());
    _subscription?.cancel();

    _subscription = _clubJoinRequestsUseCase.getClubJoinRequests(clubId).listen(
      (result) {
        if (!isClosed) {
          result.when(
            (success) {
              emit(
                success.isEmpty
                    ? ClubJoinRequestsEmptyState()
                    : ClubJoinRequestsSuccessState(requests: success),
              );
            },
            (whenError) {
              emit(ClubJoinRequestsErrorState(message: whenError.message));
            },
          );
        }
      },
    );
  }

  Future<void> accept({
    required String clubId,
    required String userId,
    required String role,
  }) async {
    await _clubJoinRequestsUseCase.acceptRequest(
      clubId: clubId,
      userId: userId,
      role: role,
    );

    if (_currentClubId != null) {
      getClubJoinRequestsMethod(_currentClubId!);
    }
  }

  Future<void> reject(String requestId) async {
    await _clubJoinRequestsUseCase.rejectRequest(requestId: requestId);

    if (_currentClubId != null) {
      getClubJoinRequestsMethod(_currentClubId!);
    }
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
