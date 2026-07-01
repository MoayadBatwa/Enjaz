import 'package:enjaz/core/common/models/club_model/club_model.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';

abstract class BaseClubsRemoteDataSource {
  Stream<List<ClubModel>> getClubs();
  Future<List<ClubModel>> getClubsFilterMethod({required String search});
  
}

@LazySingleton(as: BaseClubsRemoteDataSource)
class ClubsRemoteDataSource implements BaseClubsRemoteDataSource {
  final SupabaseClient _supabase;
  ClubsRemoteDataSource(this._supabase);

  @override
  Stream<List<ClubModel>> getClubs() {
    try {
      return _supabase.from('clubs').stream(primaryKey: ['id']).asyncMap((
        clubs,
      ) async {
        final data = await _supabase.from('clubs').select('*, universities(*)');
        return data.map((item) => ClubModel.fromJson(item)).toList();
      });
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }

  @override
  Future<List<ClubModel>> getClubsFilterMethod({required String search}) async {
    try {
      final data = await _supabase
          .from('clubs')
          .select('*, universities(*)')
          .eq('universities_id', search);

      return data.map((item) => ClubModel.fromJson(item)).toList();
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }

  
}
