import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/failure.dart';

abstract class OtpRepositoryDomain {
  Future<Result<void, Failure>> verifyOtp({
    required String email,
    required String token,
    required Map<String, dynamic> userData,
  });

  Future<void> resendOtp({required String email});
}
