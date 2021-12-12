import 'package:flutter/material.dart';
import '../../components/common/form_keys.dart';
import '../../components/common/widget_buttons.dart';
import '../../components/common/widgets_text_controller.dart';

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
                      // const RegisterTextFieldStack(),
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
                      // const RegisterLoginButtonStack(),
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
