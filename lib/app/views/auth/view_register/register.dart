import 'package:flutter/material.dart';
import '../../stacks/stacks.dart';
import '../register/stacks/stacks_register.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CommonWrapperWidget(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const <Widget>[
          RegisterWithEmailPasswordStack(),          
          SizedBox(height: 20),
          RegisterWithConnectionStack(),
        ],
      ),
    );
  }
}

