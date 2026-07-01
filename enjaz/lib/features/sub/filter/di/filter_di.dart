import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'filter_di.config.dart'; 

@InjectableInit(
  initializerName: 'initFilterSub',
   // Optional: specify the directory to scan for injectable annotations
  generateForDir: ['lib/features/sub/filter'],
)
void configureFilterSub(GetIt getIt) {
  getIt.initFilterSub();
}
