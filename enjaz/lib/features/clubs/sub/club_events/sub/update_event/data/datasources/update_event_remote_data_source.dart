import 'package:enjaz/features/clubs/sub/club_events/data/models/manage_event_model.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';

abstract class BaseUpdateEventRemoteDataSource {
  Future<bool> getUpdateEvent({required ManageEventModel updatedEvent});
  Future<void> deleteEvent({required String eventId});
}

@LazySingleton(as: BaseUpdateEventRemoteDataSource)
class UpdateEventRemoteDataSource implements BaseUpdateEventRemoteDataSource {
  final SupabaseClient _supabase;

  UpdateEventRemoteDataSource(this._supabase);

  @override
  Future<bool> getUpdateEvent({required ManageEventModel updatedEvent}) async {
    try {
      await _supabase
          .from("events")
          .update(updatedEvent.toJson())
          .eq('id', updatedEvent.id!);

      if (updatedEvent.isOpen!) {
        await _supabase.functions.invoke(
          'only-member-club',
          body: {
            'planId': updatedEvent.planId,
            'title': 'فعالية جديدة 🎉',
            'description': updatedEvent.title,
          },
        );
      }

      return true;
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }

  @override
  Future<void> deleteEvent({required String eventId}) async {
    try {
      await _supabase.from('events').delete().eq('id', eventId);
      return;
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
