import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'analytical_dashboard_di.config.dart'; 

@InjectableInit(
  initializerName: 'initAnalyticalDashboardSub',
   // Optional: specify the directory to scan for injectable annotations
  generateForDir: ['lib/features/sub/analytical_dashboard'],
)
void configureAnalyticalDashboardSub(GetIt getIt) {
  getIt.initAnalyticalDashboardSub();
}
