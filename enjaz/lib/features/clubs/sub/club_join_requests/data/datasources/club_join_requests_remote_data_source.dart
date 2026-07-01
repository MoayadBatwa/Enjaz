import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:enjaz/features/clubs/sub/club_join_requests/data/models/club_join_requests_model.dart';

abstract class BaseClubJoinRequestsRemoteDataSource {
  Stream<List<ClubJoinRequestsModel>> getClubJoinRequests(String clubId);

  Future<void> acceptRequest({
    required String clubId,
    required String userId,
    required String role,
  });

  Future<void> rejectRequest({required String requestId});
}

@LazySingleton(as: BaseClubJoinRequestsRemoteDataSource)
class ClubJoinRequestsRemoteDataSource
    implements BaseClubJoinRequestsRemoteDataSource {
  final SupabaseClient _supabase;

  ClubJoinRequestsRemoteDataSource(this._supabase);
  @override
  Stream<List<ClubJoinRequestsModel>> getClubJoinRequests(String clubId) {
    return _supabase
        .from('club_join_requests')
        .stream(primaryKey: ['id'])
        .eq('club_id', clubId)
        .asyncMap((requests) async {
          if (requests.isEmpty) return [];

          try {
            final userIds = requests.map((user) => user['user_id']).toList();

            final users = await _supabase
                .from('users')
                .select('id, name, email')
                .inFilter('id', userIds);

            return (users as List).map((user) {
              final request = requests.firstWhere(
                (request) => request['user_id'] == user['id'],
              );

              return ClubJoinRequestsModel(
                id: request['id'],
                name: user['name'],
                email: user['email'],
                userId: user['id'],
                clubId: request['club_id'],
              );
            }).toList();
          } catch (error) {
            return [];
          }
        });
  }

  @override
  Future<void> acceptRequest({
    required String clubId,
    required String userId,
    required String role,
  }) async {
    await _supabase.from('club_members').insert({
      'club_id': clubId,
      'user_id': userId,
      'role': role,
    });

    await _supabase
        .from('club_join_requests')
        .delete()
        .eq('club_id', clubId)
        .eq('user_id', userId);
  }

  @override
  Future<void> rejectRequest({required String requestId}) async {
    await _supabase.from('club_join_requests').delete().eq('id', requestId);
  }
}
