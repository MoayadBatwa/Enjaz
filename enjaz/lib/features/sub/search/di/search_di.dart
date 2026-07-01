import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'search_di.config.dart'; 

@InjectableInit(
  initializerName: 'initSearchSub',
   // Optional: specify the directory to scan for injectable annotations
  generateForDir: ['lib/features/sub/search'],
)
void configureSearchSub(GetIt getIt) {
  getIt.initSearchSub();
}
