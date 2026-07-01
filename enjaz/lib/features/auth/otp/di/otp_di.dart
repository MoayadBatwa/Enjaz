import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'otp_di.config.dart';

@InjectableInit(
  initializerName: 'initOtp',
  // Optional: specify the directory to scan for injectable annotations
  generateForDir: ['lib/features/auth/otp'],
)
void configureOtp(GetIt getIt) {
  getIt.initOtp();
}
