import 'package:flutter/material.dart';

class LoginIconButton extends StatelessWidget {
  final Icon icon;
  final Function? onPressed;
  const LoginIconButton({
    Key? key,
    required this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: icon,
      iconSize: 50,
      onPressed: () => onPressed!(),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  final String? text;
  final Widget? viewName;
  final Function? onPressed;

  const CustomTextButton({
    Key? key,
    this.text,
    this.viewName,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onPressed!(),
      child: Text("$text"),
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  final String? text;
  final double? buttonHeigth;
  final double? buttonWidth;
  final double? fontSize;
  final double? radius;
  final Function onPressed;

  const CustomElevatedButton({
    Key? key,
    this.text,
    this.buttonHeigth,
    this.buttonWidth,
    this.fontSize,
    this.radius,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth,
      height: buttonHeigth,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius ?? 0),
            ),
          ),
        ),
        onPressed: () => onPressed(),
        child: Text(
          "$text",
          style: TextStyle(fontSize: fontSize),
        ),
      ),
    );
  }
}
