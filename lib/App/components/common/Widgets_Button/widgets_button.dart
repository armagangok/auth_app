import 'package:flutter/material.dart';

class LoginIconButton extends StatelessWidget {
  final Image? icon;
  final Function? onPressed;
  const LoginIconButton({
    Key? key,
    required this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: icon!,
      iconSize: 50,
      onPressed: () => onPressed!(),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  final String? text;

  const CustomTextButton({
    Key? key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text("$text"),
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  final String? text;
  final double? buttonHeigth;
  final double? buttonWidth;
  final double? fontSize;

  const CustomElevatedButton({
    Key? key,
    this.text,
    this.buttonHeigth,
    this.buttonWidth,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth,
      height: buttonHeigth,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          "$text",
          style: TextStyle(fontSize: fontSize),
        ),
      ),
    );
  }
}
