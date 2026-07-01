import 'package:enjaz/core/common/models/club_model/club_model.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class BaseStudentClubsRemoteDataSource {
  Future<List<ClubModel>> getStudentClubs();
}

@LazySingleton(as: BaseStudentClubsRemoteDataSource)
class StudentClubsRemoteDataSource implements BaseStudentClubsRemoteDataSource {
  final SupabaseClient _supabase;

  StudentClubsRemoteDataSource(this._supabase);

  @override
  Future<List<ClubModel>> getStudentClubs() async {
    final userId = _supabase.auth.currentUser?.id;

    if (userId == null) {
      return <ClubModel>[];
    }

    final members = await _supabase
        .from('club_members')
        .select()
        .eq('user_id', userId);

    final clubIds = members.map((club) => club['club_id']).toList();

    if (clubIds.isEmpty) {
      return <ClubModel>[];
    }

    final response = await _supabase
        .from('clubs')
        .select('*, universities:universities_id(*)')
        .inFilter('id', clubIds);

    return response.map<ClubModel>((club) => ClubModel.fromJson(club)).toList();
  }
}
