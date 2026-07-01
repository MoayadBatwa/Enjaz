import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'update_event_di.config.dart'; 

@InjectableInit(
  initializerName: 'initUpdateEventSub',
   // Optional: specify the directory to scan for injectable annotations
  generateForDir: ['lib/features/sub/update_event'],
)
void configureUpdateEventSub(GetIt getIt) {
  getIt.initUpdateEventSub();
}
