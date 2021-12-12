import 'package:call_me/app/components/common/form_keys.dart';
import 'package:flutter/material.dart';
import '../../../app/components/stacks/stacks_register_view.dart';
import '../../../app/views/auth/view_login/stacks/stacks.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            body: Container(
              alignment: Alignment.bottomCenter,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  child: Form(
                    key: formKeyPart.getFormKeyLogin,
                    child: Column(
                      children: const <Widget>[
                         LoginStack(),
                         LoginWithStack(),
                         LoginAnonStack(),
                         RegisterStack(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


