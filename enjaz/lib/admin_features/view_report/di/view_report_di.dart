import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'view_report_di.config.dart'; 

@InjectableInit(
  initializerName: 'initViewReport',
   // Optional: specify the directory to scan for injectable annotations
  generateForDir: ['lib/admin_features/view_report'],
)
void configureViewReport(GetIt getIt) {
  getIt.initViewReport();
}
