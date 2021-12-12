import 'package:call_me/app/components/common/widget_buttons.dart';
import 'package:call_me/app/components/common/widgets_text.dart';
import 'package:call_me/app/components/common/widgets_text_controller.dart';
import 'package:call_me/app/components/common/widgets_text_form_field.dart';
import 'package:flutter/material.dart';

import '../../../core/services/firebase/auth/auth.dart';
import '../../navigation/navigation.dart';
import '../../views/auth/view_forgot_password.dart';
import '../../views/home/view_home.dart';

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
          
          textController: textControllers.usernameRegister, valueCatcher: textControllers.setsetusernameRegister,
        ),
        const SizedBox(height: 20),
        Row(children: const [Text("Email")]),
        TextFormFieldWidget(
          textController: textControllers.emailRegister, valueCatcher: textControllers.setemailRegister,
        ),
        const SizedBox(height: 20),
        Row(children: const [Text("Password")]),
        TextFormFieldWidget(
          textController: textControllers.passwordRegister1, valueCatcher: textControllers.setpasswordRegister1,
        ),
        const SizedBox(height: 20),
        Row(children: const [Text("Password again")]),
        TextFormFieldWidget(
          textController: textControllers.passwordRegister2, valueCatcher: textControllers.setpasswordRegister2,
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

class LoginStack extends StatelessWidget {
  const LoginStack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
                    
        Row(
          children: const [
            CustomTextWidget(text: "Login", fontSize: 36),
          ],
        ),
        const SizedBox(height: 40),
        Row(children: const [Text("Email")]),
        TextFormFieldWidget(
          valueCatcher: textControllers.setEmailLogin,
        ),
        const SizedBox(height: 20),
        Row(children: const [Text("Password")]),
        TextFormFieldWidget(
          valueCatcher: textControllers.setpasswordLogin,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomTextButton(
              text: "Forgot Password?",
              onPressed: () =>
                  getTo(context, const ForgotPasswordView()),
            ),
          ],
        ),
        CustomElevatedButton(
          radius: 10,
          text: "Login",
          fontSize: 16,
          buttonHeigth: 40,
          buttonWidth: MediaQuery.of(context).size.width,
          onPressed: () => authService
              .signInWithEmailAndPasword(const HomeView()),
        ),
      ],
    );
  }
}