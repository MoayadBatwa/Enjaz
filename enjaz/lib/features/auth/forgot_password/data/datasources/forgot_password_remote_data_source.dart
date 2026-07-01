import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';

abstract class BaseForgotPasswordRemoteDataSource {
  Future<void> sendForgotPasswordEmail({required String email});
  Future<void> resetPassword({required String newPassword});
}

@LazySingleton(as: BaseForgotPasswordRemoteDataSource)
class ForgotPasswordRemoteDataSource
    implements BaseForgotPasswordRemoteDataSource {
  final SupabaseClient _supabase;

  ForgotPasswordRemoteDataSource(this._supabase);

  @override
  Future<void> sendForgotPasswordEmail({required String email}) async {
    try {
      await _supabase.auth.resetPasswordForEmail(
        email,
        redirectTo: 'io.enjaz.app://reset-password',
      );
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }

  @override
  Future<void> resetPassword({required String newPassword}) async {
    try {
      await _supabase.auth.updateUser(UserAttributes(password: newPassword));
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
