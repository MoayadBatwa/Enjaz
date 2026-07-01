import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:enjaz/core/services/local_keys_service.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';

abstract class BaseClubEditRemoteDataSource {
  Future<void> getClubUpdate({
    required String edit,
    required String clubId,
    required String userId,
  });
  Future<bool> isUserSupervisor(String clubId, String userId);
}

@LazySingleton(as: BaseClubEditRemoteDataSource)
class ClubEditRemoteDataSource implements BaseClubEditRemoteDataSource {
  final SupabaseClient _supabase;
  final LocalKeysService _localKeysService;

  ClubEditRemoteDataSource(this._localKeysService, this._supabase);

  @override
  Future<void> getClubUpdate({
    required String edit,
    required String clubId,
    required String userId,
  }) async {
    try {
      if (userId.isEmpty) {
        await _supabase
            .from('clubs')
            .update({'description': edit})
            .eq('id', clubId);
      } else {
        await _supabase
            .from('clubs')
            .update({'description': edit})
            .eq('id', clubId);

        await _supabase
            .from('club_members')
            .update({'role': 'student'})
            .eq('club_id', clubId)
            .eq('role', 'leader')
            .select()
            .single();

        await _supabase
            .from('club_members')
            .update({'role': 'leader'})
            .eq('club_id', clubId)
            .eq('user_id', userId)
            .select()
            .single();
      }
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }

  @override
  Future<bool> isUserSupervisor(String clubId, String userId) async {
    final response = await _supabase
        .from('club_members')
        .select('id')
        .eq('club_id', clubId)
        .eq('user_id', userId)
        .inFilter('role', ['supervisor'])
        .maybeSingle();

    return response != null;
  }
}
