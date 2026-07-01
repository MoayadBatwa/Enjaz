import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'manage_club_di.config.dart'; 

@InjectableInit(
  initializerName: 'initManageClub',
   // Optional: specify the directory to scan for injectable annotations
  generateForDir: ['lib/admin_features/manage_club'],
)
void configureManageClub(GetIt getIt) {
  getIt.initManageClub();
}
