import 'package:flutter/material.dart';
import '../../../../components/common/form_keys.dart';
import '../../../../components/common/widget_buttons.dart';
import '../../../../components/common/widgets_text.dart';
import '../../../../components/common/widgets_text_controller.dart';
import '../../../../components/common/widgets_text_form_field.dart';

class RegisterWithEmailPasswordStack extends StatelessWidget {
  const RegisterWithEmailPasswordStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: const [CustomTextWidget(text: "Register", fontSize: 36)]),
        const SizedBox(height: 37),
        Row(children: const [Text("Username")]),
        TextFormFieldWidget(
          valueCatcher: textControllers.setusernameRegister,
        ),
        const SizedBox(height: 20),
        Row(children: const [Text("Email")]),
        TextFormFieldWidget(
          valueCatcher: textControllers.setemailRegister,
        ),
        const SizedBox(height: 20),
        Row(children: const [Text("Password")]),
        TextFormFieldWidget(
          valueCatcher: textControllers.setpasswordRegister1,
          isObsecure: true,
        ),
        const SizedBox(height: 20),
        Row(children: const [Text("Password again")]),
        TextFormFieldWidget(
          valueCatcher: textControllers.setpasswordRegister2,
          isObsecure: true,
        ),
        const SizedBox(height: 20),
        CustomElevatedButton(
          radius: 10,
          text: "Register",
          fontSize: 16,
          buttonWidth: MediaQuery.of(context).size.width,
          buttonHeigth: 40,
          onPressed: () async {
            if (formKeyPart.getFormKeyRegister.currentState.validate()) {
              print(textControllers.passwordRegister1.text);
              print(textControllers.passwordRegister2.text);
              print(textControllers.emailRegister.text);
              print(textControllers.usernameRegister.text);
            } else {}
          },
        ),
      ],
    );
  }
}

class RegisterWithConnectionStack extends StatelessWidget {
  const RegisterWithConnectionStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        LoginIconButton(
          icon: Image.asset("assets/images/google.png"),
        ),
        LoginIconButton(
          icon: Image.asset("assets/images/apple.png"),
        ),
        LoginIconButton(
          icon: Image.asset("assets/images/fb.png"),
        ),
      ],
    );
  }
}
