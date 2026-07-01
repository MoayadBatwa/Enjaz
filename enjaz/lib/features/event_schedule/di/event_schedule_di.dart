import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'event_schedule_di.config.dart';

@InjectableInit(
  initializerName: 'initEventSchedule',
  // Optional: specify the directory to scan for injectable annotations
  generateForDir: ['lib/features/event_schedule'],
)
void configureEventSchedule(GetIt getIt) {
  getIt.initEventSchedule();
}
