import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'admin_panel_di.config.dart';

@InjectableInit(
  initializerName: 'initAdminPanel',
  // Optional: specify the directory to scan for injectable annotations
  generateForDir: ['lib/admin_features/admin_panel'],
)
void configureAdminPanel(GetIt getIt) {
  getIt.initAdminPanel();
}
