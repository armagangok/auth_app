import 'package:flutter/material.dart';

import '../components/common/Widgets_Button/widgets_button.dart';
import '../components/common/TextFormFields/login_text_form_field.dart';
import '../components/common/Text_Widgets/widgets_text.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: const [
                    CustomTextWidget(
                      text: "Login",
                      fontSize: 36,
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Row(children: const [Text("Email")]),
                const TextFormFieldWidget(),
                Row(children: const [Text("Password")]),
                const TextFormFieldWidget(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    CustomTextButton(text: "Forgot Password?"),
                  ],
                ),
                Row(
                  children: [
                    LoginIconButton(
                        icon: Image.asset("assets/images/google.png")),
                    LoginIconButton(
                        icon: Image.asset("assets/images/apple.png")),
                    LoginIconButton(icon: Image.asset("assets/images/fb.png")),
                  ],
                ),
                const SizedBox(height: 40),
                CustomElevatedButton(
                  text: "login",
                  buttonWidth: MediaQuery.of(context).size.width,
                  buttonHeigth: MediaQuery.of(context).size.width * 0.08,
                ),
                const SizedBox(height: 40)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
