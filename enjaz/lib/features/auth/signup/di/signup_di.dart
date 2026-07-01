import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'signup_di.config.dart'; 

@InjectableInit(
  initializerName: 'initSignup',
   // Optional: specify the directory to scan for injectable annotations
  generateForDir: ['lib/features/auth/signup'],
)
void configureSignup(GetIt getIt) {
  getIt.initSignup();
}
