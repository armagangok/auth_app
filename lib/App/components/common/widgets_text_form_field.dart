import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {
  final TextEditingController? textController;
  final bool? isObsecure;
  final Function? validate;
  final Function valueCatcher;

  const TextFormFieldWidget({
    Key? key,
    this.textController,
    this.isObsecure,
    this.validate,
    required this.valueCatcher,
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
        controller: widget.textController,
        
        decoration: InputDecoration(
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
