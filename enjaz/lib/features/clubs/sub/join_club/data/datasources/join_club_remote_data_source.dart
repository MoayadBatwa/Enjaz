import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';

abstract class BaseJoinClubRemoteDataSource {
  Future<String> joinClub({required String clubId});
}

@LazySingleton(as: BaseJoinClubRemoteDataSource)
class JoinClubRemoteDataSource implements BaseJoinClubRemoteDataSource {
  final SupabaseClient _supabase;

  JoinClubRemoteDataSource(this._supabase);

  @override
  Future<String> joinClub({required String clubId}) async {
    try {
      final user = _supabase.auth.currentUser;

      if (user == null) {
        throw Exception("User not logged in");
      }

      final existingMember = await _supabase
          .from('club_members')
          .select()
          .eq('club_id', clubId)
          .eq('user_id', user.id)
          .maybeSingle();

      if (existingMember != null) {
        return "أنت منضم بالفعل";
      }

      final existingRequest = await _supabase
          .from('club_join_requests')
          .select()
          .eq('club_id', clubId)
          .eq('user_id', user.id)
          .maybeSingle();

      if (existingRequest != null) {
        return "تم إرسال طلب الانضمام مسبقًا";
      }

      await _supabase.from('club_join_requests').insert({
        "club_id": clubId,
        "user_id": user.id,
      });

      return "تم إرسال طلب الانضمام";
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
