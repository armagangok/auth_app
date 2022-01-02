import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../view_register/register.dart';
import '../../../../navigation/navigation.dart';
import '../../forgot_password/forgot_password.dart';
import '../../../../../core/remote/firebase/viewmodels/user_viewmodel.dart';
import '../../../../components/common/widget_buttons.dart';
import '../../../../components/common/widgets_text.dart';
import '../../../../components/common/widgets_text_controller.dart';
import '../../../../components/common/widgets_text_form_field.dart';

class LoginAnonimStack extends StatelessWidget {
  const LoginAnonimStack({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _userModel = Provider.of<UserViewModel>(context);
    return Row(
      children: [
        const CustomTextWidget(text: "Login anonymously!", fontSize: 16),
        TextButton(
          onPressed: () async => await _userModel.signinAnonim(),
          child: const CustomTextWidget(text: "Login", fontSize: 16),
        )
      ],
    );
  }
}

class LoginWithConnectionStack extends StatelessWidget {
  const LoginWithConnectionStack({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _userModel = Provider.of<UserViewModel>(context);
    return Row(
      children: [
        LoginIconButton(
          icon: const FaIcon(
            FontAwesomeIcons.google,
            color: Color.fromARGB(255, 7, 223, 0),
          ),
          onPressed: () async => await _userModel.signInByGoogle(),
        ),
        LoginIconButton(
          icon: FaIcon(FontAwesomeIcons.apple, color: Colors.grey[600]),
        ),
        LoginIconButton(
          icon: FaIcon(FontAwesomeIcons.facebook, color: Colors.blue[800]),
        ),
      ],
    );
  }
}

class RegisterStack extends StatelessWidget {
  const RegisterStack({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomTextWidget(
          text: "Do you have an account?",
          fontSize: 16,
        ),
        TextButton(
          onPressed: () => getTo(context, const RegisterView()),
          child: const CustomTextWidget(
            text: "Register",
            fontSize: 16,
          ),
        )
      ],
    );
  }
}

class LoginWithEmailPasswordStack extends StatelessWidget {
  const LoginWithEmailPasswordStack({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final UserViewModel _userViewModel = Provider.of<UserViewModel>(context);
    return Form(
      child: Column(
        children: [
          Row(children: const [CustomTextWidget(text: "Login", fontSize: 36)]),
          const SizedBox(height: 40),
          Row(children: const [Text("Email")]),
          TextFormFieldWidget(
            inputType: TextInputType.emailAddress,
            valueCatcher: textControllers.setEmailLogin,
            icon: const Icon(
              CupertinoIcons.mail,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 20),
          Row(children: const [Text("Password")]),
          TextFormFieldWidget(
            isObsecure: true,
            valueCatcher: textControllers.setpasswordLogin,
            icon: const Icon(
              CupertinoIcons.eye,
              color: Colors.black,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomTextButton(
                text: "Forgot Password?",
                onPressed: () => getTo(context, const ForgotPasswordView()),
              ),
            ],
          ),
          CustomElevatedButton(
            radius: 10,
            text: "Login",
            fontSize: 16,
            buttonHeigth: 40,
            buttonWidth: MediaQuery.of(context).size.width,
            onPressed: () async => await _userViewModel.signInByEmailPassword(
              textControllers.emailLogin.text,
              textControllers.passwordLogin.text,
            ),
          ),
        ],
      ),
    );
  }
}
