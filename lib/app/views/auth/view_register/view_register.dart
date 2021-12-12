import 'package:call_me/app/components/stacks/stacks.dart';
import 'package:flutter/material.dart';
import 'stacks/stacks_register_view.dart';

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

