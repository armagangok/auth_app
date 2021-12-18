import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../auth/models/user_model.dart';
import 'auth_base.dart';

class DummyService implements AuthBase {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  @override
  RenewedUser? currentUser() {
    try {
      User? user = _firebaseAuth.currentUser;
      return _userFromFirebase(user);
    } catch (e) {
      debugPrint("$e");
      return null;
    }
  }

  RenewedUser? _userFromFirebase(User? user) {
    if (user == null) {
      return null;
    } else {
      return RenewedUser(email: 'sample@email.com', id: 'sample3546346346');
    }
  }

  @override
  Future<bool> signOut() async {
    try {
      await _firebaseAuth.signOut();
      return true;
    } catch (e) {
      debugPrint("$e");
      return false;
    }
  }

  @override
  Future<RenewedUser?> signinAnonim() async {
    try {
      UserCredential authCredential = await _firebaseAuth.signInAnonymously();
      return _userFromFirebase(authCredential.user);
    } catch (e) {
      debugPrint("$e");
      return null;
    }
  }
}
