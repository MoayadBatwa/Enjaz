import 'package:injectable/injectable.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';
import 'package:uuid/uuid.dart';

abstract class BaseOtpRemoteDataSource {
  Future<void> verifyOtp({
    required String email,
    required String token,
    required Map<String, dynamic> userData,
  });

  Future<void> resendOtp({required String email});

  Future<String?> getCurrentEmail();
}

@LazySingleton(as: BaseOtpRemoteDataSource)
class OtpRemoteDataSource implements BaseOtpRemoteDataSource {
  final SupabaseClient _supabase;

  OtpRemoteDataSource(this._supabase);

  @override
  Future<void> verifyOtp({
    required String email,
    required String token,
    required Map<String, dynamic> userData,
  }) async {
    try {
      await _supabase.auth.verifyOTP(
        email: email,
        token: token,
        type: OtpType.email,
      );

      final user = _supabase.auth.currentUser;
      if (user == null) throw Exception("User null");

      await _supabase.functions.invoke(
        'roles',
        body: {'userId': user.id, 'roles': 'student'},
      );

      final notificationId = Uuid().v4();

      await _supabase.from('users').insert({
        "id": user.id,
        "auth_id": user.id,
        ...userData,
        "notification_id": notificationId,
      });

      OneSignal.User.addTags({"role": "student"});
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }

  @override
  Future<void> resendOtp({required String email}) async {
    try {
      await _supabase.auth.resend(type: OtpType.signup, email: email);
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }

  @override
  Future<String?> getCurrentEmail() async {
    try {
      return _supabase.auth.currentUser?.email;
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
