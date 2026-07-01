import 'package:enjaz/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_storage/get_storage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/v4.dart';

Future<void> setup() async {
  //----------------------------------------------------------------------------
  await dotenv.load(fileName: ".env");
  //----------------------------------------------------------------------------
  await Supabase.initialize(
    url: dotenv.env['url_supabase'].toString(),
    anonKey: dotenv.env['key_supabase'].toString(),
  );

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  //----------------------------------------------------------------------------
  await GetStorage.init();
  //----------------------------------------------------------------------------

  // Enable verbose logging for debugging (remove in production)
  OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
  // Initialize with your OneSignal App ID
  OneSignal.initialize(dotenv.env['key_onesignal'].toString());
  // Use this method to prompt for push notifications.
  // We recommend removing this method after testing and instead use In-App Messages to prompt for notification permission.
  OneSignal.Notifications.requestPermission(true);
  
  OneSignal.login(Uuid().v4());
} 
 