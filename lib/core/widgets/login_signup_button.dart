import 'package:flutter/material.dart';
import 'package:grocery/screens/home/home_screen.dart';
import 'package:grocery/core/widgets/custom_buttom.dart';

class CustomContainerButton extends StatelessWidget {
  final String text;
  final String text2;
  final String text3;
  final Widget route;
  const CustomContainerButton({
    super.key,
    required this.text,
    required this.text2,
    required this.text3,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
          child: CustomButton(text: text),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text2, style: TextStyle(fontWeight: FontWeight.w600)),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => route),
                );
              },
              child: Text(
                text3,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF53B175),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
