import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/admin_features/manage_club/domain/use_cases/manage_club_use_case.dart';
import 'package:enjaz/admin_features/manage_club/presentation/cubit/manage_club_state.dart';

class ManageClubCubit extends Cubit<ManageClubState> {
  final ManageClubUseCase _manageClubUseCase;

  ManageClubCubit(this._manageClubUseCase) : super(ManageClubInitialState()) {
    getManageClubMethod();
  }

  Future<void> getManageClubMethod() async {
    final result = await _manageClubUseCase.getManageClub();
    result.when(
      (success) {
        emit(ManageClubSuccessState(clubs: success));
      },
      (whenError) {
        emit(ManageClubErrorState(message: whenError.message));
      },
    );
  }

  Future<void> getDeleteClubsMethod({required String clubId}) async {
    final result = await _manageClubUseCase.getDeleteClubMethod(clubId: clubId);
    result.when(
      (success) {
        print(13333);
        if (isClosed) return;
        emit(ManageClubDeleteSuccessState());
      },
      (whenError) {
        emit(ManageClubErrorState(message: whenError.message));
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
