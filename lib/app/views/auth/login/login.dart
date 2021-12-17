import 'package:flutter/material.dart';
import '../../../components/stacks/stacks.dart';
import 'stacks/stacks.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonWrapperWidget(
      child: Column(
        children: const <Widget>[
          LoginWithEmailPasswordStack(),
          LoginWithConnectionStack(),
          LoginAnonimStack(),
          RegisterStack(),
        ],
      ),
    );
  }
}

