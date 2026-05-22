import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  final String text;
  final bool obscureText;
  final Widget? suffixIcon;
  const CustomTextForm({
    super.key,
    required this.text,
    this.obscureText = false,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: TextStyle(fontSize: 16, color: Color(0xFF7C7C7C))),
        TextFormField(
          obscureText: obscureText,
          decoration: InputDecoration(suffixIcon: suffixIcon),
        ),
      ],
    );
  }
}
