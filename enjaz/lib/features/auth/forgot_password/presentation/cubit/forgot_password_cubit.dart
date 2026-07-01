import 'package:enjaz/features/auth/forgot_password/domain/use_cases/forgot_password_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  final ForgotPasswordUseCase _forgotPasswordUseCase;

  ForgotPasswordCubit(this._forgotPasswordUseCase)
    : super(ForgotPasswordInitialState());

  Future<void> sendEmail(String email) async {
    emit(ForgotPasswordLoadingState());

    final result = await _forgotPasswordUseCase.sendEmail(email: email);

    result.when(
      (success) {
        emit(ForgotPasswordEmailSentState());
      },
      (whenError) {
        emit(ForgotPasswordErrorState(message: whenError.message));
      },
    );
  }

  Future<void> resetPassword(String password) async {
    emit(ForgotPasswordLoadingState());

    final result = await _forgotPasswordUseCase.resetPassword(
      password: password,
    );

    result.when(
      (success) {
        emit(ForgotPasswordSuccessState());
      },
      (whenError) {
        emit(ForgotPasswordErrorState(message: whenError.message));
      },
    );
  }
}
