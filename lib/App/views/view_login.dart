
import 'package:call_me/app/components/common/widget_buttons.dart';
import 'package:call_me/app/views/view_forgot_password.dart';
import 'package:call_me/navigation/navigation.dart';
import 'package:flutter/material.dart';
import '../components/common/widgets_text.dart';
import '../components/common/login_text_form_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          body: Container(
            alignment: Alignment.bottomCenter,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: const [
                        CustomTextWidget(text: "Login", fontSize: 36),
                      ],
                    ),
                    const SizedBox(height: 40),
                    Row(children: const [Text("Email")]),
                    const TextFormFieldWidget(),
                    const SizedBox(height: 20),
                    Row(children: const [Text("Password")]),
                    const TextFormFieldWidget(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomTextButton(
                          text: "Forgot Password?",
                          onPressed: () => getTo(context,const ForgotPasswordView()),
                        ),
                      ],
                    ),
                    Row(
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
                    ),
                    CustomElevatedButton(
                      radius: 10,
                      text: "Login",
                      fontSize: 16,
                      buttonHeigth: 40,
                      buttonWidth: MediaQuery.of(context).size.width,
                      onPressed: () => print("tapped"),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
