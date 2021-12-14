import 'package:flutter/material.dart';
import 'components/stacks/stacks.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawerWidget(),
      appBar: AppBar(
        title: const Text("Home Screen!"),
      ),
      body: Column(
        children: const [],
      ),
    );
  }
}

