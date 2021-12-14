import 'package:call_me/app/navigation/navigation.dart';
import 'package:call_me/app/views/home/view_home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../../models/user_model.dart';
import '../../../../app/components/common/widgets_text_controller.dart';

final AuthService authService = AuthService();

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  AppUser? _userFromFirebase(User? user) =>
      user != null ? AppUser(uid: user.uid) : null;

  Stream<AppUser?> get user => _auth.authStateChanges().map(_userFromFirebase);

  Future<AppUser?> signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userFromFirebase(user);
    } catch (error) {
      debugPrint("==========> $error <==========");
      return null;
    }
  }

  Future<bool> verify() async {
    try {
      print("-----> user: ${_auth.currentUser}");
      if (_auth.currentUser != null && _auth.currentUser!.emailVerified) {
        await _auth.currentUser!.sendEmailVerification();
        if (_auth.currentUser!.emailVerified == true) {
          print(
              "is email verified? ----------> ${_auth.currentUser!.emailVerified}");
          return true;
        } else {
          print(
              "is email verified? ----------> ${_auth.currentUser!.emailVerified}");
          return false;
        }
      } else {
        await _auth.currentUser!.sendEmailVerification();
        return false;
      }
    } catch (e) {
      debugPrint("---------> $e");
      return false;
    }
  }

  Future<bool> signinEmailAndPasword() async {
    try {
      if (_auth.currentUser == null) {
        UserCredential _userCredential =
            await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: textControllers.emailLogin.text,
          password: textControllers.passwordLogin.text,
        );
        if (_auth.currentUser!.emailVerified == true) {
          return true;
        } else {
          return false;
        }
      } else {}

      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        debugPrint('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        debugPrint('Wrong password provided for that user.');
      }
      return false;
    }
  }

  Future<void> registerEmailAndPassword(
      String email, String password1, String password2, context) async {
    if (password1 == password2 && password1.length >= 6) {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password1);
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          debugPrint('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          debugPrint('The account already exists for that email.');
        }
      } catch (e) {
        debugPrint("Error while registering user. => [$e]");
      }
    } else {
      debugPrint("passwords does not match");
    }
  }

  Future<void> resetPassword() async {
    try {
      await _auth.sendPasswordResetEmail(
          email: textControllers.emailForgotPassword.text);
    } catch (e) {
      debugPrint("$e");
    }
  }

  // Future<void> updatePassword() async {
  //   try {
  //     await _auth.currentUser!.updatePassword("testtest");
  //   } catch (e) {
  //     debugPrint("Error while updating password. => [$e]");
  //     try {
  //       String email = 'sample@example.com';
  //       String password = 'samplepassword';

  //       AuthCredential credential =
  //           EmailAuthProvider.credential(email: email, password: password);

  //       await _auth.currentUser!.reauthenticateWithCredential(credential);
  //     } catch (e) {
  //       debugPrint("$e");
  //     }
  //   }
  // }

  Future<void> updateEmail() async {
    try {
      await _auth.currentUser!.updateEmail("test@test.com");
    } catch (e) {
      debugPrint("Error while updating password. => [$e]");
      try {
        String email = 'sample@example.com';
        String password = 'samplepassword';

        AuthCredential credential =
            EmailAuthProvider.credential(email: email, password: password);

        await _auth.currentUser!.reauthenticateWithCredential(credential);
      } catch (e) {
        debugPrint("$e");
      }
    }
  }

  Future signOut() async {
    try {
      _auth.currentUser!.isAnonymous ? await _auth.currentUser!.delete() : "";
      await _auth.signOut();
    } catch (error) {
      return null;
    }
  }
}




































  // Future<void> createUser(String email, String password, context, pageName) async {
  //   try {
  //     UserCredential _userCredential =
  //         await _auth.createUserWithEmailAndPassword(
  //       email: email,
  //       password: password,
  //     );

  //     User? _newUser = _userCredential.user;
  //     debugPrint("$_newUser");
  //     await _newUser!.sendEmailVerification();
  //     print("We have sent verification email, please check mail box.");
  //     if (_auth.currentUser != null) {
  //       await _auth.signOut();
  //       print("User was signed out by system.");
  //     } else {
  //       getTo(context, pageName);
  //     }
  //   } catch (e) {
  //     debugPrint("$e");
  //   }
  // }