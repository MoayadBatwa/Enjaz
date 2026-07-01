import 'package:injectable/injectable.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';
import 'package:uuid/uuid.dart';

abstract class BaseLoginRemoteDataSource {
  Future<void> getLogin({required String email, required String password});
}

@LazySingleton(as: BaseLoginRemoteDataSource)
class LoginRemoteDataSource implements BaseLoginRemoteDataSource {
  final SupabaseClient _supabase;

  LoginRemoteDataSource(this._supabase);

  @override
  Future<void> getLogin({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _supabase.auth.signInWithPassword(
        password: password,
        email: email,
      );

      if (response.user != null) {
        final notificationId = Uuid().v4();
        await _supabase
            .from('users')
            .update({'notification_id': notificationId})
            .eq('id', response.user!.id);
        OneSignal.login(notificationId);
      }
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
