import 'package:enjaz/features/auth/forgot_password/domain/repositories/forgot_password_repository_domain.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/failure.dart';

@lazySingleton
class ForgotPasswordUseCase {
  final ForgotPasswordRepositoryDomain _repo;

  ForgotPasswordUseCase(this._repo);

  Future<Result<void, Failure>> sendEmail({required String email}) {
    return _repo.sendForgotPasswordEmail(email: email);
  }

  Future<Result<void, Failure>> resetPassword({required String password}) {
    return _repo.resetPassword(newPassword: password);
  }
}
