import 'package:call_me/app/navigation/navigation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../auth/login/login.dart';

class RootView extends StatelessWidget {
  RootView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Something went wrong."),
      ),
      body: Column(
        children: [Center(child: LoginView())],
      ),
    );
  }
}
