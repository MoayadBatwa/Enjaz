import 'dart:developer';

import 'package:enjaz/core/common/models/event_details_model/event_details_model.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';
import 'package:enjaz/core/utils/formatters.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class BaseClubDetailRemoteDataSource {
  Future<List<EventDetailsModel>> getClubDetail({required String clubId});
  Future<bool> getClubEdit({required bool isEditing});
  Future<bool> isUserMember(String clubId, String userId);
}

@LazySingleton(as: BaseClubDetailRemoteDataSource)
class ClubDetailRemoteDataSource implements BaseClubDetailRemoteDataSource {
  final SupabaseClient _supabase;
  ClubDetailRemoteDataSource(this._supabase);

  @override
  Future<List<EventDetailsModel>> getClubDetail({
    required String clubId,
  }) async {
    try {
      final todayFormat = DateTime.now();
      final today = Formatters.formatDate(todayFormat);
      final clubName = await _supabase
          .from('clubs')
          .select('name')
          .eq('id', clubId)
          .maybeSingle();

      final events = await _supabase
          .from('event_full_details_view')
          .select()
          .eq('club_name', clubName!["name"])
          .gte('date_at', today)
          .order('date_at');

      final eventList = events.map((map) {
        return EventDetailsModel.fromJson(map);
      }).toList();

      return eventList;
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }

  @override
  Future<bool> getClubEdit({required bool isEditing}) async {
    try {
      return !isEditing;
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
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
