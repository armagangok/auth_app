import '../locator/locator.dart';
import '../services/firebase/auth/models/user_model.dart';
import '../services/firebase/services/auth_base.dart';
import '../services/firebase/services/dummy_service.dart';
import '../services/firebase/services/services.dart';

enum AppMode { debug, release }

class UserRepository implements AuthBase {
  final FirebaseAuthService _authService = locator<FirebaseAuthService>();
  final DummyService _dummyAuthService = locator<DummyService>();

  AppMode appMode = AppMode.release;

  @override
  RenewedUser? currentUser() {
    if (appMode == AppMode.debug) {
      return _dummyAuthService.currentUser();
    } else {
      return _authService.currentUser();
    }
  }

  @override
  Future<bool> signOut() async {
    if (appMode == AppMode.debug) {
      return await _dummyAuthService.signOut();
    } else {
      return _authService.signOut();
    }
  }

  @override
  Future<RenewedUser?> signinAnonim() async {
    if (appMode == AppMode.debug) {
      await _dummyAuthService.signinAnonim();
    } else {
      return _authService.signinAnonim();
    }
  }
}
