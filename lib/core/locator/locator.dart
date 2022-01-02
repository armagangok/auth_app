import 'package:get_it/get_it.dart';

import '../remote/firebase/auth/repository/user_repository.dart';
import '../remote/firebase/auth/services/dummy_service.dart';
import '../remote/firebase/auth/services/services.dart';


final GetIt locator = GetIt.asNewInstance();

void setupLocator() {
  locator.registerLazySingleton(() => FirebaseAuthService());
  locator.registerLazySingleton(() => DummyService());
  locator.registerLazySingleton(() => UserRepository());
}
