import 'package:enjaz/features/clubs/sub/club_events/data/models/manage_event_model.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';

abstract class BaseClubEventsRemoteDataSource {
  Future<List<ManageEventModel>> getClubEvents({required String clubId});
  Future<String> createPlan({required String clubId});
}

@LazySingleton(as: BaseClubEventsRemoteDataSource)
class ClubEventsRemoteDataSource implements BaseClubEventsRemoteDataSource {
  final SupabaseClient _supabase;

  ClubEventsRemoteDataSource(this._supabase);

  @override
  Future<List<ManageEventModel>> getClubEvents({required String clubId}) async {
    try {
      final response = await _supabase
          .from('events')
          .select('''
          *,
          club_plans!inner(
            id,
            club_id
          )
        ''')
          .eq('club_plans.club_id', clubId);

      final result = response.map((item) => ManageEventModel.fromJson(item)).toList();

      return result;
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }

  @override
  Future<String> createPlan({required String clubId}) async {
    try {
      final response = await _supabase
          .from('club_plans')
          .insert({"club_id": clubId})
          .select("id")
          .maybeSingle();

      return response!['id'];
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
