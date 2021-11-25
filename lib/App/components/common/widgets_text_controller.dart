import 'package:flutter/material.dart';

final TextControllers textControllers = TextControllers();

class TextControllers {
  final TextEditingController _usernameRegister = TextEditingController();
  final TextEditingController _emailRegister = TextEditingController();
  final TextEditingController _passwordRegister1 = TextEditingController();
  final TextEditingController _passwordRegister2 = TextEditingController();
  final TextEditingController _emailLogin = TextEditingController();
  final TextEditingController _passwordLogin = TextEditingController();
  final TextEditingController _emailForgotPassword = TextEditingController();
  final TextEditingController _enterCode = TextEditingController();
  final TextEditingController _newpassword1 = TextEditingController();
  final TextEditingController _newpassword2 = TextEditingController();
  

  get usernameRegister => _usernameRegister;
  get emailRegister => _emailRegister;
  get passwordRegister1 => _passwordRegister1;
  get passwordRegister2 => _passwordRegister2;
  get emailLogin => _emailLogin;
  get passwordLogin => _passwordLogin;
  get emailForgotPassword => _emailForgotPassword;
  get enterCode => _enterCode;
  get newpassword1 => _newpassword1;
  get newpassword2 => _newpassword2;
}
