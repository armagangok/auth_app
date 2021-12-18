import 'package:call_me/app/views/root/view_root.dart';
import 'package:flutter/material.dart';
import 'core/initializing/initialize_app.dart';

void main() async {
  await initApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      home: const RootView(),
    );
  }
}
