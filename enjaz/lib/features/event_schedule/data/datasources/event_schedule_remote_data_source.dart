import 'package:enjaz/core/common/models/event_details_model/event_details_model.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';

abstract class BaseEventScheduleRemoteDataSource {
  Future<List<EventDetailsModel>> getEventSchedule({String? clubId});
}

@LazySingleton(as: BaseEventScheduleRemoteDataSource)
class EventScheduleRemoteDataSource
    implements BaseEventScheduleRemoteDataSource {
  final SupabaseClient _supabase;
  EventScheduleRemoteDataSource(this._supabase);

  @override
  Future<List<EventDetailsModel>> getEventSchedule({String? clubId}) async {
    try {
      var query = _supabase.from('event_full_details_view').select();

      if (clubId != null) {
        final clubName = await _supabase
            .from('clubs')
            .select('name')
            .eq('id', clubId)
            .maybeSingle();

        query = query.eq('club_name', clubName?["name"]);
      }

      final events = await query.order('date_at');

      final eventList = events.map((map) {
        return EventDetailsModel.fromJson(map);
      }).toList();

      return eventList;
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
