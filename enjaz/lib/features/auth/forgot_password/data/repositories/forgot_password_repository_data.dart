import 'package:enjaz/features/auth/forgot_password/data/datasources/forgot_password_remote_data_source.dart';
import 'package:enjaz/features/auth/forgot_password/domain/repositories/forgot_password_repository_domain.dart';
import 'package:injectable/injectable.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:enjaz/core/errors/failure.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';

@LazySingleton(as: ForgotPasswordRepositoryDomain)
class ForgotPasswordRepositoryData implements ForgotPasswordRepositoryDomain {
  final BaseForgotPasswordRemoteDataSource remoteDataSource;

  ForgotPasswordRepositoryData(this.remoteDataSource);

  @override
  Future<Result<void, Failure>> sendForgotPasswordEmail({
    required String email,
  }) async {
    try {
      await remoteDataSource.sendForgotPasswordEmail(email: email);
      return Success(null);
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }

  @override
  Future<Result<void, Failure>> resetPassword({
    required String newPassword,
  }) async {
    try {
      await remoteDataSource.resetPassword(newPassword: newPassword);
      return Success(null);
    } catch (error) {
      return Error(FailureExceptions.getException(error));
    }
  }
}
