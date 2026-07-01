import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/failure.dart';

abstract class ForgotPasswordRepositoryDomain {
  Future<Result<void, Failure>> sendForgotPasswordEmail({
    required String email,
  });

  Future<Result<void, Failure>> resetPassword({required String newPassword});
}
