import 'package:firebase_auth/firebase_auth.dart';
import '../../../../app/components/common/widgets_text_controller.dart';
import '../../../../app/navigation/navigation.dart';
import '../../../../app/views/home/view_home.dart';
import '../../../models/user_model.dart';

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
      print("==========> $error <==========");
      return null;
    }
  }

  Future<bool> signinEmailAndPasword() async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: textControllers.emailLogin.text,
        password: textControllers.passwordLogin.text,
      );
      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
      return false;
    }
  }

  Future<void> registerEmailAndPassword(
    String email,
    String password1,
    String password2,
    context,
  ) async {
    if (password1 == password2 && password1.length >= 6) {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password1);
        getTo(context, const HomeView());
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          print('The account already exists for that email.');
        }
      } catch (e) {}
    } else {
      print("passwords does not match");
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