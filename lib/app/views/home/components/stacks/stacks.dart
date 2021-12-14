import 'package:flutter/material.dart';
import '../../../../../core/services/firebase/auth/auth.dart';
import '../../../../navigation/navigation.dart';
import '../../../root/view_root.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                const Text("My Account"),
                IconButton(
                  onPressed: () async {
                    getTo(context, RootView());
                  },
                  icon: const Icon(Icons.person),
                ),
              ],
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                const Text("Settings"),
                IconButton(
                  onPressed: () async {
                    getTo(context, RootView());
                  },
                  icon: const Icon(Icons.settings),
                ),
              ],
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                const Text("Logout"),
                IconButton(
                  onPressed: () async {
                    await authService.signOut();
                    getTo(context, RootView());
                  },
                  icon: const Icon(Icons.logout),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
