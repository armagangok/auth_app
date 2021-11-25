import 'package:flutter/material.dart';

FormKeyPart formKeyPart = FormKeyPart();

class FormKeyPart {
  final _formKeyLogin = GlobalKey<FormState>();
  final _formKeyRegister = GlobalKey<FormState>();

  get getFormKeyLogin => _formKeyLogin;
  get getFormKeyRegister => _formKeyRegister;
}
