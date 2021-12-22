import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {
  final bool? isObsecure;
  final Function? validate;
  final Function valueCatcher;
  final Icon? icon;
  final TextInputType? inputType;

  const TextFormFieldWidget({
    Key? key,
    this.isObsecure,
    this.validate,
    required this.valueCatcher,
    this.icon,
    this.inputType,
  }) : super(key: key);

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextFormField(
        onChanged: (value) => setState(() => widget.valueCatcher(value)),
        obscureText: widget.isObsecure ?? false,
        keyboardType: widget.inputType,
        decoration: InputDecoration(
          prefixIcon: widget.icon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
