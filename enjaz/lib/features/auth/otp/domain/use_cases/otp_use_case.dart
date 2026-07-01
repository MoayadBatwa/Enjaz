import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/auth/otp/domain/repositories/otp_repository_domain.dart';

@lazySingleton
class OtpUseCase {
  final OtpRepositoryDomain _repositoryData;

  OtpUseCase(this._repositoryData);

  Future<Result<void, Failure>> verifyOtp({
    required String email,
    required String token,
    required Map<String, dynamic> userData,
  }) {
    return _repositoryData.verifyOtp(
      email: email,
      token: token,
      userData: userData,
    );
  }

  Future<void> resendOtp({required String email}) {
    return _repositoryData.resendOtp(email: email);
  }
}
