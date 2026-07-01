import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'student_clubs_di.config.dart'; 

@InjectableInit(
  initializerName: 'initStudentClubs',
   // Optional: specify the directory to scan for injectable annotations
  generateForDir: ['lib/features/student_clubs'],
)
void configureStudentClubs(GetIt getIt) {
  getIt.initStudentClubs();
}
