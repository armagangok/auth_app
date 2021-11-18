import 'package:call_me/App/views/view_login.dart';
import 'package:call_me/navigation/navigation.dart';
import 'package:flutter/material.dart';
import '../components/common/Widgets_Button/widgets_button.dart';
import '../components/common/TextFormFields/login_text_form_field.dart';
import '../components/common/Text_Widgets/widgets_text.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: const [
                    CustomTextWidget(
                      text: "Register",
                      fontSize: 36,
                    ),
                  ],
                ),
                const SizedBox(height: 37),
                Row(children: const [Text("Username")]),
                const TextFormFieldWidget(),
                const SizedBox(height: 20),
                Row(children: const [Text("Email")]),
                const TextFormFieldWidget(),
                const SizedBox(height: 20),
                Row(children: const [Text("Password")]),
                const TextFormFieldWidget(),
                const SizedBox(height: 20),
                CustomElevatedButton(
                  text: "Register",
                  fontSize: 16,
                  buttonWidth: MediaQuery.of(context).size.width,
                  buttonHeigth: MediaQuery.of(context).size.width * 0.08,
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    LoginIconButton(
                        icon: Image.asset("assets/images/google.png")),
                    LoginIconButton(
                        icon: Image.asset("assets/images/apple.png")),
                    LoginIconButton(icon: Image.asset("assets/images/fb.png")),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const CustomTextWidget(
                        text: "Alredy Member?", fontSize: 16),
                    TextButton(
                      onPressed: () => get(context, const LoginView()),
                      child:
                          const CustomTextWidget(text: "Login", fontSize: 16),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
