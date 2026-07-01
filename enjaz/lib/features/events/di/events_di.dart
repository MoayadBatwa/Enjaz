import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'events_di.config.dart'; 

@InjectableInit(
  initializerName: 'initEvents',
   // Optional: specify the directory to scan for injectable annotations
  generateForDir: ['lib/features/events'],
)
void configureEvents(GetIt getIt) {
  getIt.initEvents();
}
