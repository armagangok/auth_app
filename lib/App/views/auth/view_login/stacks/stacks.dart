import 'package:flutter/material.dart';
import '../../../../../core/services/firebase/auth/auth.dart';
import '../../../../components/common/widget_buttons.dart';
import '../../../../components/common/widgets_text.dart';
import '../../../../navigation/navigation.dart';
import '../../view_register.dart';

class LoginAnonStack extends StatelessWidget {
  const LoginAnonStack({
    Key? key,
  }) : super(key: key);

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

            if (result == null) {
              print("error signing in");
            } else {
              print("signed in");
              print("RESULT =====> $result <=====");
              print("${result.uid}");
            }
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

class LoginWithStack extends StatelessWidget {
  const LoginWithStack({
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

class RegisterStack extends StatelessWidget {
  const RegisterStack({
    Key? key,
  }) : super(key: key);

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
