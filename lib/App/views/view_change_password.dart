import 'package:call_me/app/components/common/widgets_text.dart';
import 'package:call_me/app/components/common/login_text_form_field.dart';
import 'package:call_me/app/components/common/widget_buttons.dart';
import 'package:call_me/app/components/common/widgets_text_controller.dart';
import 'package:flutter/material.dart';

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({Key? key}) : super(key: key);

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
                          text: "Change Password",
                          fontSize: 36,
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    Row(children: const [Text("new password")]),
                    TextFormFieldWidget(
                      textController: textControllers.newpassword1,
                    ),
                    const SizedBox(height: 20),
                    Row(children: const [Text("new password again")]),
                    TextFormFieldWidget(
                      textController: textControllers.newpassword2,
                    ),
                    const SizedBox(height: 20),
                    CustomElevatedButton(
                      radius: 10,
                      text: "Change",
                      fontSize: 16,
                      buttonWidth: MediaQuery.of(context).size.width,
                      buttonHeigth: 40,
                      onPressed: () => print("changed"),
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
