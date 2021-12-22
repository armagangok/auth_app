import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/viewmodels/user_viewmodel.dart';
import '../auth/login/login.dart';
import '../home/view_home.dart';

class RootView extends StatelessWidget {
  const RootView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UserModel _userModel = Provider.of<UserModel>(context);

    if (_userModel.state == ViewState.idle) {
      if (_userModel.user != null) {
        debugPrint("user is not null");
        return const HomeView();
      } else {
        debugPrint("user is  null");
        return const LoginView();
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
