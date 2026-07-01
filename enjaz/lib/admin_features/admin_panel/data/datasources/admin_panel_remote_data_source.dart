import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:enjaz/core/services/local_keys_service.dart';
import 'package:enjaz/admin_features/admin_panel/data/models/admin_panel_model.dart';
import 'package:enjaz/core/errors/network_exceptions.dart';


abstract class BaseAdminPanelRemoteDataSource {
  Future<AdminPanelModel> getAdminPanel();
}


@LazySingleton(as: BaseAdminPanelRemoteDataSource)
class AdminPanelRemoteDataSource implements BaseAdminPanelRemoteDataSource {
 
  final SupabaseClient _supabase;
  final LocalKeysService _localKeysService;
  
  

   AdminPanelRemoteDataSource(this._localKeysService, this._supabase);



    @override
  Future<AdminPanelModel> getAdminPanel() async {
    try {
      return AdminPanelModel(id: 1, firstName: "Last Name", lastName: "First Name");
    } catch (error) {
     throw FailureExceptions.getException(error);
    }
  }
}
