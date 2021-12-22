import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import '../../../../../core/viewmodels/user_viewmodel.dart';
import '../../../../components/common/widget_buttons.dart';
import '../../../../components/common/widgets_text.dart';
import '../../../../components/common/widgets_text_controller.dart';
import '../../../../components/common/widgets_text_form_field.dart';

class RegisterWithEmailPasswordStack extends StatelessWidget {
  const RegisterWithEmailPasswordStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserModel _userViewModel = Provider.of<UserModel>(context);
    return Column(
      children: [
        Row(children: const [CustomTextWidget(text: "Register", fontSize: 36)]),
        const SizedBox(height: 37),
        Row(children: const [Text("Username")]),
        TextFormFieldWidget(
          valueCatcher: textControllers.setusernameRegister,
        ),
        const SizedBox(height: 20),
        Row(children: const [Text("Email")]),
        TextFormFieldWidget(
          valueCatcher: textControllers.setemailRegister,
          inputType: TextInputType.emailAddress,
        ),
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
          onPressed: () async => {
            await _userViewModel.createUserByEmailPassword(
              textControllers.emailRegister.text,
              textControllers.passwordRegister1.text,
            ),
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
        const LoginIconButton(
          icon: FaIcon(
            FontAwesomeIcons.google,
            color: Color.fromARGB(255, 0, 206, 7),
          ),
        ),
        LoginIconButton(
          icon: FaIcon(
            FontAwesomeIcons.apple,
            color: Colors.grey[700],
          ),
        ),
        LoginIconButton(
          icon: FaIcon(
            FontAwesomeIcons.facebook,
            color: Colors.blue[800],
          ),
        ),
      ],
    );
  }
}
