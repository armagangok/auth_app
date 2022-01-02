import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../core/remote/firebase/viewmodels/user_viewmodel.dart';
import '../../../../components/common/widgets_text.dart';

class CustomDrawerWidget extends StatelessWidget {
  const   CustomDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UserViewModel _userModel = Provider.of<UserViewModel>(context);

    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.orange,
              child: const Center(
                child: CustomTextWidget(
                  text: "Menu",
                  fontSize: 25,
                ),
              ),
              height: 75,
              width: MediaQuery.of(context).size.longestSide,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: <Widget>[
                  const Text("My Account"),
                  IconButton(
                    onPressed: () async {},
                    icon: const Icon(Icons.person),
                  ),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: <Widget>[
                  const Text("Settings"),
                  IconButton(
                    onPressed: () async {},
                    icon: const Icon(Icons.settings),
                  ),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: <Widget>[
                  const Text("Logout"),
                  IconButton(
                    onPressed: () async => await _userModel.signOut(),
                    icon: const Icon(Icons.logout),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
