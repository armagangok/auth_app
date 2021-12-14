import 'package:flutter/material.dart';
import '../../../../../core/services/firebase/auth/auth.dart';
import '../../../../components/common/widget_buttons.dart';
import '../../../../components/common/widgets_text.dart';
import '../../../../components/common/widgets_text_controller.dart';
import '../../../../components/common/widgets_text_form_field.dart';
import '../../../../navigation/navigation.dart';
import '../../../home/view_home.dart';
import '../../view_forgot_password/view_forgot_password.dart';
import '../../view_register/view_register.dart';

class LoginAnonimStack extends StatelessWidget {
  const LoginAnonimStack({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomTextWidget(
          text: "Login anonymously!",
          fontSize: 16,
        ),
        TextButton(
          onPressed: () async {
            dynamic result = await authService.signInAnon();

            debugPrint(result);
          },
          child: const CustomTextWidget(
            text: "Login",
            fontSize: 16,
          ),
        )
      ],
    );
  }
}

class LoginWithConnectionStack extends StatelessWidget {
  const LoginWithConnectionStack({Key? key}) : super(key: key);
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

class RegisterStack extends StatelessWidget {
  const RegisterStack({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomTextWidget(
          text: "Do you have an account?",
          fontSize: 16,
        ),
        TextButton(
          onPressed: () => getTo(context, const RegisterView()),
          child: const CustomTextWidget(
            text: "Register",
            fontSize: 16,
          ),
        )
      ],
    );
  }
}

class LoginWithEmailPasswordStack extends StatelessWidget {
  const LoginWithEmailPasswordStack({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(children: const [CustomTextWidget(text: "Login", fontSize: 36)]),
          const SizedBox(height: 40),
          Row(children: const [Text("Email")]),
          TextFormFieldWidget(valueCatcher: textControllers.setEmailLogin),
          const SizedBox(height: 20),
          Row(children: const [Text("Password")]),
          TextFormFieldWidget(valueCatcher: textControllers.setpasswordLogin),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomTextButton(
                text: "Forgot Password?",
                onPressed: () => getTo(context, const ForgotPasswordView()),
              ),
            ],
          ),
          CustomElevatedButton(
            radius: 10,
            text: "Login",
            fontSize: 16,
            buttonHeigth: 40,
            buttonWidth: MediaQuery.of(context).size.width,
            onPressed: () async {
              if (await authService.signinEmailAndPasword() == true) {
                getTo(context, const HomeView());
              }
            },
          ),
        ],
      ),
    );
  }
}
