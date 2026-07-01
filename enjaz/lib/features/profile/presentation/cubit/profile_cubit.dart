import 'package:enjaz/core/services/user_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/features/profile/domain/use_cases/profile_use_case.dart';
import 'package:enjaz/features/profile/presentation/cubit/profile_state.dart';
import 'package:get_it/get_it.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileUseCase _profileUseCase;
  final user = GetIt.I<UserService>();
  String get userId => user.getUser?.id ?? '';
  String avatarType = 'default';

  ProfileCubit(this._profileUseCase) : super(ProfileInitialState()) {
    avatarType = user.getUser?.avatarType ?? 'default';
    getProfileMethod();
  }

  Future<void> getProfileMethod() async {
    final result = await _profileUseCase.getProfile();
    result.when(
      (success) {
        emit(ProfileSuccessState(profile: success));
      },
      (whenError) {
        emit(ProfileErrorState(message: whenError.message));
      },
    );
  }

  Future<void> updateUserAvatar(String type) async {
    final result = await _profileUseCase.updateUserAvatar(userId, type);
    result.when(
      (success) {
        avatarType = type;
        if (state is ProfileSuccessState) {
          final currentState = state as ProfileSuccessState;
          emit(ProfileInitialState());
          emit(ProfileSuccessState(profile: currentState.profile));
        }
      },
      (whenError) {
        emit(ProfileErrorState(message: whenError.message));
      },
    );
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
