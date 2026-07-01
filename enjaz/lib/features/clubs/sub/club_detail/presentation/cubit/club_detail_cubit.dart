import 'package:enjaz/core/services/user_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/features/clubs/sub/club_detail/domain/use_cases/club_detail_use_case.dart';
import 'package:enjaz/features/clubs/sub/club_detail/presentation/cubit/club_detail_state.dart';
import 'package:get_it/get_it.dart';

class ClubDetailCubit extends Cubit<ClubDetailState> {
  final ClubDetailUseCase _clubDetailUseCase;
  final user = GetIt.I<UserService>();
  bool isMember = false;
  String get userId => user.getUser!.id;

  ClubDetailCubit(this._clubDetailUseCase) : super(ClubDetailInitialState());

  Future<void> getClubDetailMethod({required String clubId}) async {
    final result = await _clubDetailUseCase.getClubDetail(clubId: clubId);
    result.when(
      (success) {
        if (isClosed) return;
        emit(ClubDetailSuccessState(events: success));
      },
      (whenError) {
        emit(ClubDetailErrorState(message: whenError.message));
      },
    );
  }

  Future<void> getClubEditMethod({required bool isEditing}) async {
    final result = await _clubDetailUseCase.getClubEdit(isEditing: isEditing);
    result.when(
      (success) {
        if (isClosed) return;
        emit(ClubEditSuccessState(editing: success));
      },
      (whenError) {
        emit(ClubDetailErrorState(message: whenError.message));
      },
    );
  }

  Future<void> isUserMember(String clubId) async {
    final result = await _clubDetailUseCase.isUserMember(clubId, userId);
    isMember = result;
    // if (isClosed) return; 
    // emit(ClubDetailInitialState());
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
