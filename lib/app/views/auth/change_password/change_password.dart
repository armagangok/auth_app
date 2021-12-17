import 'package:flutter/material.dart';
import '../../../components/common/widget_buttons.dart';
import '../../../components/common/widgets_text.dart';
import '../../../components/common/widgets_text_controller.dart';
import '../../../components/common/widgets_text_form_field.dart';
import '../../stacks/stacks.dart';

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return CommonWrapperWidget(
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

            valueCatcher: textControllers.setnewpassword1,
          ),
          const SizedBox(height: 20),
          Row(children: const [Text("new password again")]),
          TextFormFieldWidget(

            valueCatcher: textControllers.setnewpassword2,
          ),
          const SizedBox(height: 20),
          CustomElevatedButton(
            radius: 10,
            text: "Change",
            fontSize: 16,
            buttonWidth: MediaQuery.of(context).size.width,
            buttonHeigth: 40,
            onPressed: () => debugPrint("changed"),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

