import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final String? text;
  final Color? color;
  final double? fontSize;
  const CustomTextWidget({
    Key? key,
    this.text,
    this.color,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "$text",
      style: TextStyle(fontSize:fontSize ),
    );
  }
}