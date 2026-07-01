import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:enjaz/features/clubs/sub/club_members/data/models/club_members_model.dart';

abstract class BaseClubMembersRemoteDataSource {
  Future<List<ClubMembersModel>> getClubMembers(String clubId);
  Future<bool> isUserMember(String clubId, String userId);
}

@LazySingleton(as: BaseClubMembersRemoteDataSource)
class ClubMembersRemoteDataSource implements BaseClubMembersRemoteDataSource {
  final SupabaseClient _supabase;

  ClubMembersRemoteDataSource(this._supabase);

  @override
  Future<List<ClubMembersModel>> getClubMembers(String clubId) async {
    final members = await _supabase
        .from('club_members')
        .select()
        .eq('club_id', clubId);

    final userIds = members.map((member) => member['user_id']).toList();

    if (userIds.isEmpty) {
      return <ClubMembersModel>[];
    }

    final response = await _supabase
        .from('users')
        .select()
        .inFilter('id', userIds);

    return response.map<ClubMembersModel>((user) {
      final member = members.firstWhere(
        (member) => member['user_id'] == user['id'],
      );

      return ClubMembersModel(
        id: user['id'],
        name: user['name'],
        email: user['email'],
        role: member['role'],
        avatar: user['avatar_type'] ?? 'default', 
      );
    }).toList();
  }

  @override
  Future<bool> isUserMember(String clubId, String userId) async {
    final response = await _supabase
        .from('club_members')
        .select('id')
        .eq('club_id', clubId)
        .eq('user_id', userId)
        .inFilter('role', ['supervisor', 'leader'])
        .maybeSingle();

    return response != null;
  }
}
