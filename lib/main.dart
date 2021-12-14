import 'package:call_me/app/views/view_root.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/initializing/initialize_app.dart';
import 'core/models/user_model.dart';
import 'core/services/firebase/auth/auth.dart';

void main() async {
  await initApp();
  runApp(const MyApp());
}

final AppUser _user = AppUser(uid: '');

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
