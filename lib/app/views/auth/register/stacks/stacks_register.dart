import 'package:flutter/material.dart';
import '../../../../components/common/widget_buttons.dart';
import '../../../../components/common/widgets_text.dart';
import '../../../../components/common/widgets_text_controller.dart';
import '../../../../components/common/widgets_text_form_field.dart';

class RegisterWithEmailPasswordStack extends StatelessWidget {
  const RegisterWithEmailPasswordStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: const [CustomTextWidget(text: "Register", fontSize: 36)]),
        const SizedBox(height: 37),
        Row(children: const [Text("Username")]),
        TextFormFieldWidget(valueCatcher: textControllers.setusernameRegister),
        const SizedBox(height: 20),
        Row(children: const [Text("Email")]),
        TextFormFieldWidget(valueCatcher: textControllers.setemailRegister),
        const SizedBox(height: 20),
        Row(children: const [Text("Password")]),
        TextFormFieldWidget(
          valueCatcher: textControllers.setpasswordRegister1,
          isObsecure: true,
        ),
        const SizedBox(height: 20),
        Row(children: const [Text("Password again")]),
        TextFormFieldWidget(
          valueCatcher: textControllers.setpasswordRegister2,
          isObsecure: true,
        ),
        const SizedBox(height: 20),
        CustomElevatedButton(
          radius: 10,
          text: "Register",
          fontSize: 16,
          buttonWidth: MediaQuery.of(context).size.width,
          buttonHeigth: 40,
          onPressed: () async {
            // await register.registerEmailAndPassword(
            //   textControllers.emailRegister.text,
            //   textControllers.passwordRegister1.text,
            //   textControllers.passwordRegister2.text,
            //   context,
            // );

            // if (await verification.verify() == true) {
            //   debugPrint("trueeeeee");
            //   getTo(context, const HomeView());
            // } else {
            //   debugPrint("falseeeeee");
            //   return const Scaffold(
            //     body: Center(child: CircularProgressIndicator()),
            //   );
            // }
          },
        ),
      ],
    );
  }
}

class RegisterWithConnectionStack extends StatelessWidget {
  const RegisterWithConnectionStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        LoginIconButton(
          icon: Icon(Icons.ac_unit_outlined),
        ),
        LoginIconButton(
          icon: Icon(Icons.ac_unit_outlined),
        ),
        LoginIconButton(
          icon: Icon(Icons.ac_unit_outlined),
        ),
      ],
    );
  }
}
