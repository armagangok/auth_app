import 'package:call_me/app/components/common/form_keys.dart';
import 'package:call_me/app/components/common/widget_buttons.dart';
import 'package:call_me/app/components/common/widgets_text_controller.dart';
import 'package:call_me/app/components/widgets/stacks_register_view.dart';
import 'package:call_me/app/navigation/navigation.dart';
import 'package:call_me/services/firebase/tools/firebase_tools.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          body: Form(
            key: formKeyPart.getFormKeyRegister,
            child: Container(
              alignment: Alignment.bottomCenter,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const RegisterTextFieldStack(),
                      CustomElevatedButton(
                        radius: 10,
                        text: "Register",
                        fontSize: 16,
                        buttonWidth: MediaQuery.of(context).size.width,
                        buttonHeigth: 40,
                        onPressed: () async {
                          if (formKeyPart.getFormKeyRegister.currentState
                              .validate()) {
                            print(textControllers.passwordRegister1.text);
                            print(textControllers.passwordRegister2.text);
                            print(textControllers.emailRegister.text);
                          } else {}
                        },
                      ),
                      const SizedBox(height: 20),
                      const RegisterLoginButtonStack(),
                    ],
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
