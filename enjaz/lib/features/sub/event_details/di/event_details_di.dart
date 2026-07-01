import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'event_details_di.config.dart'; 

@InjectableInit(
  initializerName: 'initEventDetailsSub',
   // Optional: specify the directory to scan for injectable annotations
  generateForDir: ['lib/features/sub/event_details'],
)
void configureEventDetailsSub(GetIt getIt) {
  getIt.initEventDetailsSub();
}
