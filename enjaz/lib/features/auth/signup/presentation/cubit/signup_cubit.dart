import 'package:enjaz/features/auth/signup/data/major_models/major_model.dart';
import 'package:enjaz/core/common/models/university_model/university_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/features/auth/signup/domain/use_cases/signup_use_case.dart';
import 'package:enjaz/features/auth/signup/presentation/cubit/signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupuseCase _signupuseCase;

  SignupCubit(this._signupuseCase) : super(SignupInitialState());

  List<UniversityModel> universities = [];
  List<MajorModel> majors = [];

  Future<void> getSignupMethod({
    required String email,
    required String password,
    required String name,
    required String phone,
    required String gender,
    required String majorId,
    required String universityId,
  }) async {
    emit(SignupLoadingState());
    final result = await _signupuseCase.getSignUp(
      email: email,
      password: password,
      name: name,
      phone: phone,
      gender: gender,
      majorId: majorId,
      universityId: universityId,
    );
    result.when(
      (success) {
        emit(SignupSuccessState());
      },
      (whenError) {
        emit(SignupErrorState(message: whenError.message));
      },
    );
  }

  Future<void> loadData() async {
    emit(SignupLoadingState());

    try {
      universities = await _signupuseCase.getUniversities();
      majors = await _signupuseCase.getMajors();

      emit(SignupInitialState());
    } catch (e) {
      if (isClosed) return;
      emit(SignupErrorState(message: e.toString()));
    }
  }

  @override
  Future<void> close() {
    //here is when close cubit
    return super.close();
  }
}
