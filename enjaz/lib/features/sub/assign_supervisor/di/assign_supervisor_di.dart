import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'assign_supervisor_di.config.dart'; 

@InjectableInit(
  initializerName: 'initAssignSupervisorSub',
   // Optional: specify the directory to scan for injectable annotations
  generateForDir: ['lib/features/sub/assign_supervisor'],
)
void configureAssignSupervisorSub(GetIt getIt) {
  getIt.initAssignSupervisorSub();
}
