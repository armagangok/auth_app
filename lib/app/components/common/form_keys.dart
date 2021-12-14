import 'package:flutter/material.dart';

final FormKeyPart formKeyPart = FormKeyPart();

class FormKeyPart {
  static final GlobalKey _formKeyLogin = GlobalKey<FormState>();
  static final GlobalKey _formKeyRegister = GlobalKey<FormState>();

  get getFormKeyLogin => _formKeyLogin;
  get getFormKeyRegister => _formKeyRegister;
}
