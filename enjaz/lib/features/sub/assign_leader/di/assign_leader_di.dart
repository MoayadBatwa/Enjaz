import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'assign_leader_di.config.dart'; 

@InjectableInit(
  initializerName: 'initAssignLeaderSub',
   // Optional: specify the directory to scan for injectable annotations
  generateForDir: ['lib/features/sub/assign_leader'],
)
void configureAssignLeaderSub(GetIt getIt) {
  getIt.initAssignLeaderSub();
}
