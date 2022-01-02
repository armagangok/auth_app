import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/remote/firebase/auth/viewmodels/user_viewmodel.dart';
import '../auth/login/login.dart';
import '../home/view_home.dart';

class RootView extends StatelessWidget {
  const RootView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UserViewModel _userModel = Provider.of<UserViewModel>(context);

    if (_userModel.state == ViewState.idle) {
      if (_userModel.user != null && _userModel.isAnonim() == true) {
        debugPrint("${_userModel.user!.id}");
        debugPrint("user is not null");
        return const HomeView();
      } else if (_userModel.user != null &&
          _userModel.isAnonim() == false &&
          _userModel.isVerified() == true) {
        debugPrint("${_userModel.user!.id}");
        debugPrint("${_userModel.isAnonim()}");
        debugPrint("${_userModel.isVerified()}");
        return const HomeView();
      } else {
        debugPrint("Error occured");
        return const LoginView();
      }
    } else {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }
  }
}
