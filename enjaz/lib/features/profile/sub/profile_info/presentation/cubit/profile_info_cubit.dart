import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/features/profile/sub/profile_info/domain/use_cases/profile_info_use_case.dart';
import 'package:enjaz/features/profile/sub/profile_info/presentation/cubit/profile_info_state.dart';

class ProfileInfoCubit extends Cubit<ProfileInfoState> {
  final ProfileInfoUseCase _profileInfoUseCase;

  ProfileInfoCubit(this._profileInfoUseCase)
    : super(ProfileInfoInitialState()) {
    getProfileInfoMethod();
  }

  Future<void> getProfileInfoMethod() async {
    final result = await _profileInfoUseCase.getProfileInfo();
    result.when(
      (success) {
        emit(ProfileInfoSuccessState(majors: success));
      },
      (whenError) {
        emit(ProfileInfoErrorState(message: whenError.message));
      },
    );
  }

  Future<void> getProfileUpdateMethod({
    required String name,
    required String phoneNumber,
    required String major,
    required String gender,
  }) async {
    final result = await _profileInfoUseCase.getProfileUpdateMethod(
      name: name,
      phoneNumber: phoneNumber,
      major: major,
      gender: gender,
    );
    result.when((success) {}, (whenError) {
      emit(ProfileInfoErrorState(message: whenError.message));
    });
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
