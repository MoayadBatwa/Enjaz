import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'event_report_di.config.dart'; 

@InjectableInit(
  initializerName: 'initEventReportSub',
   // Optional: specify the directory to scan for injectable annotations
  generateForDir: ['lib/features/sub/event_report'],
)
void configureEventReportSub(GetIt getIt) {
  getIt.initEventReportSub();
}
