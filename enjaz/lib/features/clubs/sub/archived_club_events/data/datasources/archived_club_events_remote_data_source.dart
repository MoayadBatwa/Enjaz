import 'package:enjaz/core/utils/formatters.dart';
import 'package:enjaz/features/clubs/sub/archived_club_events/data/models/archived_club_events_model.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';

abstract class BaseArchivedClubEventsRemoteDataSource {
  Future<List<ArchivedClubEventsModel>> getArchivedClubEvents({
    required String clubId,
  });
}

@LazySingleton(as: BaseArchivedClubEventsRemoteDataSource)
class ArchivedClubEventsRemoteDataSource
    implements BaseArchivedClubEventsRemoteDataSource {
  final SupabaseClient _supabase;

  ArchivedClubEventsRemoteDataSource(this._supabase);
  @override
  Future<List<ArchivedClubEventsModel>> getArchivedClubEvents({
    required String clubId,
  }) async {
    try {
      final todayFormat = DateTime.now();
      final today = Formatters.formatDate(todayFormat);
      final planIds = await _supabase
          .from('club_plans')
          .select('id')
          .eq('club_id', clubId);

      final planIdsFilter = planIds.map((map) => map['id']).toList();

      final events = await _supabase
          .rpc(
            'get_past_events_with_report',
            params: {'p_plan_ids': planIdsFilter, 'p_date': today},
          )
          .select();

      return events
          .map((map) => ArchivedClubEventsModel.fromJson(map))
          .toList();
    } catch (error) {
      print(error);
      throw FailureExceptions.getException(error);
    }
  }
}
