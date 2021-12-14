import 'package:flutter/material.dart';
import '../../../../../core/services/firebase/auth/auth.dart';
import '../../../../components/common/widget_buttons.dart';
import '../../../../components/common/widgets_text.dart';
import '../../../../components/common/widgets_text_controller.dart';
import '../../../../components/common/widgets_text_form_field.dart';
import '../../../../navigation/navigation.dart';
import '../../../home/view_home.dart';

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
            await authService.registerEmailAndPassword(
              textControllers.emailRegister.text,
              textControllers.passwordRegister1.text,
              textControllers.passwordRegister2.text,
              context,
            );

            if (await authService.verify() == true) {
              print("trueeeeee");
              getTo(context, const HomeView());
            } else {
              print("falseeeeee");
              return const Scaffold(
                body: Center(child: CircularProgressIndicator()),
              );
            }
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
    );
  }
}
