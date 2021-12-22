import '../models/user_model.dart';

abstract class AuthBase {
  RenewedUser? currentUser();
  Future<RenewedUser?> signinAnonim();
  Future<bool> signOut();
  Future<RenewedUser?> signInByGoogle();
  Future<RenewedUser?> signInByEmailPassword(String email, String password);
  Future<RenewedUser?> createUserByEmailPassword(String email, String password);
}
