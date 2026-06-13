import 'package:flutter/material.dart';
import '../../../core/constants/app_images.dart';
import '../../../core/widgets/gradient_text_color.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(AppImages.logo, width: 35),
        SizedBox(height: 15),
        const GradientText(
          text: 'Grocery Store',
          colors: [Colors.lightGreen, Colors.orange, Colors.green],
        ),
        SizedBox(height: 15),
      ],
    );
  }
}
