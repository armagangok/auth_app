import 'package:call_me/core/services/firebase/auth/models/user_model.dart';
import 'package:call_me/core/services/firebase/services/auth_base.dart';
import 'package:flutter/material.dart';
import '../../../components/stacks/stacks.dart';
import 'stacks/stacks.dart';

class LoginView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CommonWrapperWidget(
      child: Column(
        children: <Widget>[
          LoginWithEmailPasswordStack(),
          LoginWithConnectionStack(),
          LoginAnonimStack(),
          RegisterStack(),
        ],
      ),
    );
  }
}
