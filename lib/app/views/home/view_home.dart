import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/viewmodels/user_model.dart';
import 'components/stacks/stacks.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UserModel _userModel = Provider.of<UserModel>(context);
    return Scaffold(
      drawer: const CustomDrawerWidget(),
      appBar: AppBar(title: const Text("Home Screen!")),
      body: Column(
        children: [
          Text("Welcome to homescreen! ${_userModel.user?.id}"),
        ],
      ),
    );
  }
}
