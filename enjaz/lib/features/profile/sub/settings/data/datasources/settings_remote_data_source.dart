import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:enjaz/core/services/local_keys_service.dart';
import 'package:enjaz/features/profile/sub/settings/data/models/settings_model.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';


abstract class BaseSettingsRemoteDataSource {
  Future<SettingsModel> getSettings();
}


@LazySingleton(as: BaseSettingsRemoteDataSource)
class SettingsRemoteDataSource implements BaseSettingsRemoteDataSource {
 
  final SupabaseClient _supabase;
  final LocalKeysService _localKeysService;
  
  

   SettingsRemoteDataSource(this._localKeysService, this._supabase);



    @override
  Future<SettingsModel> getSettings() async {
    try {
      return SettingsModel(id: 1, firstName: "Last Name", lastName: "First Name");
    } catch (error) {
     throw FailureExceptions.getException(error);
    }
  }
}
