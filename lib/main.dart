import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app/views/root/view_root.dart';
import 'core/initializing/initialize_app.dart';
import 'core/viewmodels/user_viewmodel.dart';

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
      home: ChangeNotifierProvider(
        create: (BuildContext context) => UserModel(),
        child:  const RootView(),
      ),
    );
  }
}
