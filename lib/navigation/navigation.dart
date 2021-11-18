import 'package:flutter/material.dart';

Future<dynamic> get(BuildContext context, pageName) {
  return Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => pageName,
    ),
  );
}
