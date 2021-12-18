import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/viewmodels/user_model.dart';
import '../auth/login/login.dart';
import '../home/view_home.dart';

class RootView extends StatelessWidget {
  RootView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UserModel _userModel = Provider.of<UserModel>(context);
    if (_userModel.state == ViewState.idle) {
      if (_userModel.user == null) {
        debugPrint("user is null");
        return LoginView();
      } else {
        debugPrint("user is not null");
        return HomeView();
      }
    } else {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
  }
}





    //     if (_userModel.user == null) {
    //   debugPrint("user is null");
    //   debugPrint("user in build method => ${_userModel.user?.id}");
    //   return LoginView();
    // } else {
    //   debugPrint(
    //       "user in build method => [${_userModel.user?.id}]  is not null");
    //   return HomeView();
    // }