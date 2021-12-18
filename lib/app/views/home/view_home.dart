import 'package:call_me/core/services/firebase/auth/models/user_model.dart';
import 'package:flutter/material.dart';
import '../../../core/locator/locator.dart';
import '../../../core/services/firebase/services/auth_base.dart';
import '../../../core/services/firebase/services/services.dart';
import 'components/stacks/stacks.dart';

class HomeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    AuthBase authService = locator<FirebaseAuthService>();
    final RenewedUser? currentUSer = authService.currentUser();
    return Scaffold(
      drawer: CustomDrawerWidget(authBase: authService),
      appBar: AppBar(title: const Text("Home Screen!")),
      body: Column(
        children: [
          Text("Welcome to homescreen! ${currentUSer?.id}"),
        ],
      ),
    );
  }
}
