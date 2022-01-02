import 'package:flutter/material.dart';
import 'package:nested/nested.dart';
import 'package:provider/provider.dart';
import 'app/views/root/view_root.dart';
import 'core/initializing/initialize_app.dart';
import 'core/remote/firebase/viewmodels/user_viewmodel.dart';

void main() async {
  await initApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers ,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.orange),
        home: const RootView(),
      ),
    );
  }

  List<SingleChildWidget> get providers {
    return [
      ChangeNotifierProvider<UserViewModel>(create: (_) => UserViewModel()),
    ];
  }
}