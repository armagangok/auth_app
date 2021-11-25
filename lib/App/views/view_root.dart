import 'package:call_me/app/views/home/view_home.dart';
import 'package:call_me/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

import 'auth/view_login.dart';

class RootView extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  RootView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppUser? user = Provider.of<AppUser?>(context);
    print(user);
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Something went wrong."),
            ),
            body: Column(
              children: [Center(child: Text("${snapshot.error}"))],
            ),
          );
        }

        if (snapshot.connectionState == ConnectionState.done) {
          if (user == null) {
            return LoginView();
          } else {
            return HomeView();
          }
        }

        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
