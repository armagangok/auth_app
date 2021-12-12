import 'package:flutter/material.dart';

final FormKeyPart formKeyPart = FormKeyPart();

class FormKeyPart {
  final GlobalKey _formKeyLogin = GlobalKey<FormState>();
  final GlobalKey _formKeyRegister = GlobalKey<FormState>();

  get getFormKeyLogin => _formKeyLogin;
  get getFormKeyRegister => _formKeyRegister;
}
