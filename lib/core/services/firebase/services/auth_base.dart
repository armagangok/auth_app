import '../auth/models/user_model.dart';

abstract class AuthBase {
  RenewedUser? currentUser();
  Future<RenewedUser?> signinAnonim();
  Future<bool> signOut();
  Future<RenewedUser?> signInByGoogle();
}
