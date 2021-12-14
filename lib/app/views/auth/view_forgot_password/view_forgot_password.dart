import 'package:flutter/material.dart';
import '../../../../core/services/firebase/auth/auth.dart';
import '../../../components/common/widget_buttons.dart';
import '../../../components/common/widgets_text.dart';
import '../../../components/common/widgets_text_controller.dart';
import '../../../components/common/widgets_text_form_field.dart';
import '../../../components/stacks/stacks.dart';


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
            valueCatcher: textControllers.setemailForgotPassword,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomTextButton(
                text: "Send link to email.",
                onPressed: () => authService.resetPassword(),
              ),
            ],
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
