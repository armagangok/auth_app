import 'package:call_me/app/components/common/form_keys.dart';
import 'package:call_me/app/components/common/widget_buttons.dart';
import 'package:call_me/app/components/common/widgets_text.dart';
import 'package:call_me/app/components/common/widgets_text_form_field.dart';
import 'package:call_me/app/navigation/navigation.dart';
import 'package:call_me/app/views/auth/view_register.dart';
import 'package:call_me/app/views/home/view_home.dart';
import 'package:call_me/services/firebase/auth/auth.dart';
import 'package:flutter/material.dart';
import 'view_forgot_password.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  

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
                child: Form(
                  key: formKeyPart.getFormKeyLogin,
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
                      const TextFormFieldWidget(
                        isObsecure: true,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomTextButton(
                            text: "Forgot Password?",
                            onPressed: () => getTo(
                              context,
                              const ForgotPasswordView(),
                            ),
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
                      ),
                      Row(
                        children: [
                          const CustomTextWidget(
                            text: "Do you have an account?",
                            fontSize: 16,
                          ),
                          TextButton(
                            onPressed: () =>
                                getTo(context, const RegisterView()),
                            child: const CustomTextWidget(
                              text: "Register",
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
      ),
    );
  }
}
