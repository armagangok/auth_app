import 'package:flutter/material.dart';
import '../../../core/services/firebase/auth/auth.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen!"),
        leading: IconButton(
          onPressed: () async => await authService.signOut(),
          icon: const Icon(Icons.logout),
        ),
      ),
      body: Column(
        children: const [],
      ),
    );
  }
}
