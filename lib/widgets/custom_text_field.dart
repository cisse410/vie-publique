import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.labelText,
    required this.prefixIcon,
    this.suffixIcon,
    required this.keyboardType,
  });

  final TextEditingController controller;
  final String hintText;
  final String labelText;
  final Icon prefixIcon;
  final Icon? suffixIcon;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        cursorColor: Colors.green,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          prefixIconColor: Colors.green,
          // suffixIcon: suffixIcon,
          suffixIconColor: Colors.green,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.black38,
          ),
          labelText: labelText,
          labelStyle: const TextStyle(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
