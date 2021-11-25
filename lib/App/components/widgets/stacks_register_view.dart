import 'package:call_me/app/components/common/widget_buttons.dart';
import 'package:call_me/app/components/common/widgets_text.dart';
import 'package:call_me/app/components/common/widgets_text_controller.dart';
import 'package:call_me/app/components/common/widgets_text_form_field.dart';
import 'package:flutter/material.dart';

class RegisterTextFieldStack extends StatelessWidget {
  const RegisterTextFieldStack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            CustomTextWidget(
              text: "Register",
              fontSize: 36,
            ),
          ],
        ),
        const SizedBox(height: 37),
        Row(children: const [Text("Username")]),
        TextFormFieldWidget(
          
          textController: textControllers.usernameRegister,
        ),
        const SizedBox(height: 20),
        Row(children: const [Text("Email")]),
        TextFormFieldWidget(
          textController: textControllers.emailRegister,
        ),
        const SizedBox(height: 20),
        Row(children: const [Text("Password")]),
        TextFormFieldWidget(
          textController: textControllers.passwordRegister1,
        ),
        const SizedBox(height: 20),
        Row(children: const [Text("Password again")]),
        TextFormFieldWidget(
          textController: textControllers.passwordRegister2,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

class RegisterLoginButtonStack extends StatelessWidget {
  const RegisterLoginButtonStack({
    Key? key,
  }) : super(key: key);

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
