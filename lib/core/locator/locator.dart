import 'package:get_it/get_it.dart';
import '../services/firebase/services/dummy_service.dart';
import '../services/firebase/services/services.dart';

final GetIt locator = GetIt.asNewInstance();

void setupLocator() {
  locator.registerLazySingleton(() => FirebaseAuthService());
  locator.registerLazySingleton(() => DummyService());
}
