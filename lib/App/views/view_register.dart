import 'package:call_me/App/views/view_login.dart';
import 'package:call_me/app/components/common/login_text_form_field.dart';
import 'package:call_me/app/components/common/widget_buttons.dart';
import 'package:call_me/app/components/common/widgets_text_controller.dart';
import 'package:call_me/navigation/navigation.dart';
import 'package:flutter/material.dart';
import '../components/common/widgets_text.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

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
                  mainAxisAlignment: MainAxisAlignment.end,
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
                      textController: textControllers.emailRegister,
                    ),
                    const SizedBox(height: 20),
                    CustomElevatedButton(
                      radius: 10,
                      text: "Register",
                      fontSize: 16,
                      buttonWidth: MediaQuery.of(context).size.width,
                      buttonHeigth: 40,
                      onPressed: () => print("tapped"),
                    ),
                    const SizedBox(height: 20),
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
                    Row(
                      children: [
                        const CustomTextWidget(
                            text: "Already Member?", fontSize: 16),
                        TextButton(
                          onPressed: () => getTo(context, const LoginView()),
                          child: const CustomTextWidget(
                            text: "Login",
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
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
