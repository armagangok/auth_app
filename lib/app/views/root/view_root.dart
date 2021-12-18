import 'package:call_me/app/views/home/view_home.dart';
import 'package:call_me/core/locator/locator.dart';
import 'package:call_me/core/services/firebase/auth/models/user_model.dart';
import 'package:call_me/core/services/firebase/services/auth_base.dart';
import 'package:call_me/core/services/firebase/services/services.dart';
import 'package:flutter/material.dart';
import '../auth/login/login.dart';

class RootView extends StatefulWidget {
  const RootView({Key? key}) : super(key: key);
  @override
  State<RootView> createState() => _RootViewState();
}

class _RootViewState extends State<RootView> {
  RenewedUser? _user;
  AuthBase authService = locator<FirebaseAuthService>();
  @override
  void initState() {
    super.initState();
    _updateUser();
  }

  @override
  Widget build(BuildContext context) {
    if (_user == null) {
      debugPrint("user in build method => $_user" "${_user?.id ?? ""}");
      return LoginView();
    } else {
      debugPrint("user in build method => $_user" "${_user?.id ?? ""}");
      return HomeView();
    }
  }

  void _checkUser(){

  } 

  void _updateUser() {
    setState(() {
      _user = authService.currentUser();
    });
  }
}
