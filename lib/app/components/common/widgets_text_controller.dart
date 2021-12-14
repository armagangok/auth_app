import 'package:flutter/material.dart';

final textControllers = TextControllers();

class TextControllers {
  final TextEditingController _usernameRegister = TextEditingController();
  final TextEditingController _emailRegister = TextEditingController();
  final TextEditingController _passwordRegister1 = TextEditingController();
  final TextEditingController _passwordRegister2 = TextEditingController();
  ///////////////////////////////////////////////////////////////////////////
  ///////////////////////////////////////////////////////////////////////////
  final TextEditingController _emailLogin = TextEditingController();
  final TextEditingController _passwordLogin = TextEditingController();
  ///////////////////////////////////////////////////////////////////////////
  ///////////////////////////////////////////////////////////////////////////
  final TextEditingController _emailForgotPassword = TextEditingController();
  final TextEditingController _enterCode = TextEditingController();
  final TextEditingController _newpassword1 = TextEditingController();
  final TextEditingController _newpassword2 = TextEditingController();

  get usernameRegister => _usernameRegister;
  get emailRegister => _emailRegister;
  get passwordRegister1 => _passwordRegister1;
  get passwordRegister2 => _passwordRegister2;
  ///////////////////////////////////////////////////////////////////////////
  ///////////////////////////////////////////////////////////////////////////
  get emailLogin => _emailLogin;
  get passwordLogin => _passwordLogin;
  ///////////////////////////////////////////////////////////////////////////
  ///////////////////////////////////////////////////////////////////////////
  get emailForgotPassword => _emailForgotPassword;
  get enterCode => _enterCode;
  get newpassword1 => _newpassword1;
  get newpassword2 => _newpassword2;

  setusernameRegister(String newVal) => _usernameRegister.text = newVal;
  setemailRegister(String newVal) => _emailRegister.text = newVal;
  setpasswordRegister1(String newVal) => _passwordRegister1.text = newVal;
  setpasswordRegister2(String newVal) => _passwordRegister2.text = newVal;
  ///////////////////////////////////////////////////////////////////////////
  ///////////////////////////////////////////////////////////////////////////
  setEmailLogin(String newVal) => _emailLogin.text = newVal;
  setpasswordLogin(String newVal) => _passwordLogin.text = newVal;
  ///////////////////////////////////////////////////////////////////////////
  ///////////////////////////////////////////////////////////////////////////
  setemailForgotPassword(String newVal) => _emailForgotPassword.text = newVal;
  setenterCode(String newVal) => _enterCode.text = newVal;
  setnewpassword1(String newVal) => _newpassword1.text = newVal;
  setnewpassword2(String newVal) => _newpassword2.text = newVal;
}
