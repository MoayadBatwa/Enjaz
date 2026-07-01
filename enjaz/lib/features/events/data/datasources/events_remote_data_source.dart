import 'dart:async';
import 'package:enjaz/core/common/models/event_details_model/event_details_model.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class BaseEventsRemoteDataSource {
  Stream<List<EventDetailsModel>> getEvents();
}

@LazySingleton(as: BaseEventsRemoteDataSource)
class EventsRemoteDataSource implements BaseEventsRemoteDataSource {
  final SupabaseClient _supabase;

  EventsRemoteDataSource(this._supabase);

  @override
  Stream<List<EventDetailsModel>> getEvents() {
    final controller = StreamController<List<EventDetailsModel>>();

    Future<void> refreshData() async {
      if (controller.isClosed) return;

      final data = await _supabase
          .from('event_full_details_view')
          .select()
          .eq("is_open", true)
          .gte('date_at', DateTime.now());

      final events = data
          .map((json) => EventDetailsModel.fromJson(json))
          .toList();

      controller.add(events);
    }

    // Single channel with listeners for 2 tables
    _supabase
        .channel('events-feature-channel')
        .onPostgresChanges(
          event: PostgresChangeEvent.all,
          table: 'event_enrollments',
          callback: (payload) => refreshData(),
        )
        .onPostgresChanges(
          event: PostgresChangeEvent.all,
          table: 'events',
          callback: (payload) => refreshData(),
        )
        .subscribe();

    refreshData();

    return controller.stream;
  }
}
