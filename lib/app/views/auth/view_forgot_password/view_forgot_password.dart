import 'package:call_me/app/components/stacks/stacks.dart';
import 'package:flutter/material.dart';
import '../../../components/common/widget_buttons.dart';
import '../../../components/common/widgets_text.dart';
import '../../../components/common/widgets_text_controller.dart';
import '../../../components/common/widgets_text_form_field.dart';
import '../../../navigation/navigation.dart';
import '../view_change_password/view_change_password.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonWrapperWidget(
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
            valueCatcher: textControllers.setemailForgotPassword,
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
            valueCatcher: textControllers.setenterCode,
          ),
          const SizedBox(height: 20),
          CustomElevatedButton(
            radius: 10,
            text: "Next",
            fontSize: 16,
            buttonWidth: MediaQuery.of(context).size.width,
            buttonHeigth: 40,
            onPressed: () => getTo(context, const ChangePasswordView()),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
