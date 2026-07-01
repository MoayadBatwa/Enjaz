import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'clubs_di.config.dart'; 

@InjectableInit(
  initializerName: 'initClubs',
   // Optional: specify the directory to scan for injectable annotations
  generateForDir: ['lib/features/clubs'],
)
void configureClubs(GetIt getIt) {
  getIt.initClubs();
}
