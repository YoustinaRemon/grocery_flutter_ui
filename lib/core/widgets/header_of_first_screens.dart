import 'package:flutter/material.dart';
import '../constants/app_images.dart';
import 'gradient_text_color.dart';

class HeaderOfFirstScreens extends StatelessWidget {
  const HeaderOfFirstScreens({
    super.key,
    required this.text1,
    required this.text2,
  });
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Center(
          child: Column(
            children: [
              Image.asset(AppImages.logo),
              SizedBox(height: 20),
              const GradientText(
                text: 'Welcome to Grocery Store',
                colors: [Colors.lightGreen, Colors.orange, Colors.green],
              ),
            ],
          ),
        ),
        SizedBox(height: 50),
        Text(
          text1,
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 15),
        Text(text2, style: TextStyle(fontSize: 16, color: Color(0xFF7C7C7C))),
      ],
    );
  }
}
