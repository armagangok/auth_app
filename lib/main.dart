import 'package:call_me/initializing/initialize_app.dart';
import 'package:call_me/app/views/view_root.dart';
import 'package:call_me/models/user_model.dart';
import 'package:call_me/services/firebase/auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  await initApp();
  runApp(const MyApp());
}

AppUser _user = AppUser(uid: '');

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamProvider<AppUser?>.value(
      value: AuthService().user,
      
      initialData: _user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.orange),
        home: RootView(),
      ),
    );
  }
}
