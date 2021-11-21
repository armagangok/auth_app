import 'package:flutter/material.dart';

Future<dynamic> getTo(BuildContext context, pageName) {
  return Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => pageName,
    ),
  );
}
