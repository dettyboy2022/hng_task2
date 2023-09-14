import 'package:flutter/material.dart';

class ReusableTextField extends StatelessWidget {
  final TextEditingController controller;
  final InputDecoration decoration;
  final TextStyle textStyle;

  const ReusableTextField({
    required this.controller,
    required this.decoration,
    required this.textStyle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: decoration,
      style: textStyle,
    );
  }
}
