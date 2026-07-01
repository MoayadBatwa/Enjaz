import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'create_club_di.config.dart'; 

@InjectableInit(
  initializerName: 'initCreateClubSub',
   // Optional: specify the directory to scan for injectable annotations
  generateForDir: ['lib/features/sub/create_club'],
)
void configureCreateClubSub(GetIt getIt) {
  getIt.initCreateClubSub();
}
