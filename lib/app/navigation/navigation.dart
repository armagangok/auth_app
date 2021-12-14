import 'package:flutter/material.dart';

Future<void> getTo(BuildContext context, pageName) {
  return Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => pageName,
    ),
  );
}

void getBack(BuildContext context) {
  return Navigator.pop(context);
}
