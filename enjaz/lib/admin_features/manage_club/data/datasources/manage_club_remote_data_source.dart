import 'package:enjaz/core/common/models/club_model/club_model.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';

abstract class BaseManageClubRemoteDataSource {
  Future<List<ClubModel>> getManageClub();
  Future<void> getDeleteClubMethod({required String clubId});
}

@LazySingleton(as: BaseManageClubRemoteDataSource)
class ManageClubRemoteDataSource implements BaseManageClubRemoteDataSource {
  final SupabaseClient _supabase;

  ManageClubRemoteDataSource(this._supabase);

  @override
  Future<List<ClubModel>> getManageClub() async {
    try {
      final data = await _supabase.from('clubs').select('*, universities(*)');
      return data.map((item) => ClubModel.fromJson(item)).toList();
    } catch (error) {
      throw FailureExceptions.getException(error);
    }
  }

  @override
  Future<void> getDeleteClubMethod({required String clubId}) async {
    try {
      final res = await _supabase
          .from('clubs')
          .delete()
          .eq('id', clubId)
          .select();
    } catch (error) {
      print(error);
      throw FailureExceptions.getException(error);
    }
  }
}
