import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:enjaz/features/clubs/sub/club_events/data/models/manage_event_model.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';

abstract class BaseCreateEventRemoteDataSource {
  Future<bool> getCreateEvent({required ManageEventModel newEvent});
}

@LazySingleton(as: BaseCreateEventRemoteDataSource)
class CreateEventRemoteDataSource implements BaseCreateEventRemoteDataSource {
  final SupabaseClient _supabase;

  CreateEventRemoteDataSource(this._supabase);

  @override
  Future<bool> getCreateEvent({required ManageEventModel newEvent}) async {
    try {
      await _supabase.from('events').insert(newEvent.toJson());
      return true;
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
