import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:enjaz/features/auth/otp/domain/use_cases/otp_use_case.dart';
import 'package:enjaz/features/auth/otp/presentation/cubit/otp_state.dart';

class OtpCubit extends Cubit<OtpState> {
  final OtpUseCase _otpUseCase;

  OtpCubit(this._otpUseCase) : super(OtpInitialState());

  Future<void> verifyOtp({
    required String email,
    required String token,
    required Map<String, dynamic> userData,
  }) async {
    emit(OtpLoadingState());

    final result = await _otpUseCase.verifyOtp(
      email: email,
      token: token,
      userData: userData,
    );

    result.when(
      (success) {
        emit(OtpSuccessState());
      },
      (whenError) {
        emit(OtpErrorState(message: whenError.message));
      },
    );
  }

  Future<void> resendOtp(String email) async {
    await _otpUseCase.resendOtp(email: email);
  }
}
