import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/features/auth/otp/data/datasources/otp_remote_data_source.dart';
import 'package:enjaz/features/auth/otp/domain/repositories/otp_repository_domain.dart';

@LazySingleton(as: OtpRepositoryDomain)
class OtpRepositoryData implements OtpRepositoryDomain {
  final BaseOtpRemoteDataSource remoteDataSource;

  OtpRepositoryData(this.remoteDataSource);

  @override
  Future<Result<void, Failure>> verifyOtp({
    required String email,
    required String token,
    required Map<String, dynamic> userData,
  }) async {
    try {
      await remoteDataSource.verifyOtp(
        email: email,
        token: token,
        userData: userData,
      );
      return Success(null);
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }

  @override
  Future<Result<void, Failure>> resendOtp({required String email}) async {
    try {
      await remoteDataSource.resendOtp(email: email);
      return Success(null);
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
