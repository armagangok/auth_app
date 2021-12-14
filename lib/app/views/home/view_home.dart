import 'package:call_me/app/navigation/navigation.dart';
import 'package:call_me/app/views/view_root.dart';
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
          onPressed: () async {            
            await authService.signOut();            
            getTo(context, RootView());
          },
          icon: const Icon(Icons.logout),
        ),
      ),
      body: Column(
        children: const [],
      ),
    );
  }
}
