import 'package:enjaz/core/common/models/event_details_model/event_details_model.dart';
import 'package:enjaz/core/services/user_service.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';

abstract class BaseActivityHistoryRemoteDataSource {
  Future<List<EventDetailsModel>> getActivityHistory();
}

@LazySingleton(as: BaseActivityHistoryRemoteDataSource)
class ActivityHistoryRemoteDataSource
    implements BaseActivityHistoryRemoteDataSource {
  final SupabaseClient _supabase;

  ActivityHistoryRemoteDataSource(this._supabase);

  @override
  Future<List<EventDetailsModel>> getActivityHistory() async {
    try {
      final events = await _supabase
          .from('event_full_details_view')
          .select("*")
          .match({"status": "منتهية", "is_enrolled": true});

      return events.map((event) => EventDetailsModel.fromJson(event)).toList();
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }
}
