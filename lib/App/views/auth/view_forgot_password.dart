import 'package:call_me/app/components/common/widgets_text.dart';
import 'package:call_me/app/components/common/widgets_text_form_field.dart';
import 'package:call_me/app/components/common/widget_buttons.dart';
import 'package:call_me/app/components/common/widgets_text_controller.dart';
import 'package:call_me/app/navigation/navigation.dart';
import 'package:flutter/material.dart';
import 'view_change_password.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

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
                        CustomTextWidget(
                          text: "Forgot Password?",
                          fontSize: 36,
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    Row(children: const [Text("Email")]),
                    TextFormFieldWidget(
                      textController: textControllers.emailForgotPassword,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomTextButton(
                          text: "Send Code to E-mail",
                          onPressed: () => print("e-mail sent"),
                        ),
                      ],
                    ),
                    Row(children: const [Text("Enter Code")]),
                    TextFormFieldWidget(
                      textController: textControllers.enterCode,
                    ),
                    const SizedBox(height: 20),
                    CustomElevatedButton(
                      radius: 10,
                      text: "Next",
                      fontSize: 16,
                      buttonWidth: MediaQuery.of(context).size.width,
                      buttonHeigth: 40,
                      onPressed: () => getTo(context, ChangePasswordView()),
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
