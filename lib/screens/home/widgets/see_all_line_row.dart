import 'package:flutter/material.dart';

class SeeAllLine extends StatelessWidget {
  const SeeAllLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Exclusive Offer',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            fontFamily: 'Gilroy',
          ),
        ),
        Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            'See All',
            style: TextStyle(
              color: Color(0xFF53B175),
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
