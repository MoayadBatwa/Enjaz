import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'create_event_di.config.dart'; 

@InjectableInit(
  initializerName: 'initCreateEventSub',
   // Optional: specify the directory to scan for injectable annotations
  generateForDir: ['lib/features/sub/create_event'],
)
void configureCreateEventSub(GetIt getIt) {
  getIt.initCreateEventSub();
}
