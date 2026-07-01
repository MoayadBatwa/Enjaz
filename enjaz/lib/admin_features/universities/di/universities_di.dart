import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'universities_di.config.dart'; 

@InjectableInit(
  initializerName: 'initUniversities',
   // Optional: specify the directory to scan for injectable annotations
  generateForDir: ['lib/admin_features/universities'],
)
void configureUniversities(GetIt getIt) {
  getIt.initUniversities();
}
