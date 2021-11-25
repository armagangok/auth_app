import 'package:call_me/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

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

  Future signOut() async {
    try {
      await _auth.currentUser!.delete();
      return await _auth.signOut();
    } catch (error) {
      print("$error");
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