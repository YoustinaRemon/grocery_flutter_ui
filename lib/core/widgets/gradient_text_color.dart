import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  const GradientText({super.key, required this.text, required this.colors});

  final String text;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) =>
          LinearGradient(colors: colors).createShader(bounds),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.grey[300],
          fontSize: 18,
        ),
      ),
    );
  }
}
