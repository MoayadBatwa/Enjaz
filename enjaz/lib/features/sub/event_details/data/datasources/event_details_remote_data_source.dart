import 'package:enjaz/core/services/user_service.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';

abstract class BaseEventDetailsRemoteDataSource {
  Future<void> getEventDetails();

  Future<bool> enrollInEvent({required String eventId});

  Future<bool> dropOutEvent({required String eventId});
}

@LazySingleton(as: BaseEventDetailsRemoteDataSource)
class EventDetailsRemoteDataSource implements BaseEventDetailsRemoteDataSource {
  final SupabaseClient _supabase;
  final UserService user;

  EventDetailsRemoteDataSource(this._supabase, this.user);

  @override
  Future<void> getEventDetails() async {
    try {} catch (error) {
      throw FailureExceptions.getException(error);
    }
  }

  @override
  Future<bool> enrollInEvent({required String eventId}) async {
    try {
      // Calls a PostgreSQL RPC to atomically enrolls the student and updates event status based on new capacity.
      await _supabase.from('event_enrollments').insert({
        'event_id': eventId,
        'user_id': user.getUser!.id,
      });

      return true;
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }

  @override
  Future<bool> dropOutEvent({required String eventId}) async {
    try {
      // Calls a PostgreSQL RPC to remove a student and recalculate event status.
      await _supabase.from('event_enrollments').delete().match({
        'event_id': eventId,
        'user_id': _supabase.auth.currentUser!.id,
      });
      return false;
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
