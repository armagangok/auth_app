import 'package:call_me/services/firebase/auth/auth.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen!"),
        leading: IconButton(
          onPressed: () async => await authService.signOut(),
          icon: Icon(Icons.logout),
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
