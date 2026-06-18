import 'package:flutter/material.dart';

class ReviewSection extends StatelessWidget {
  const ReviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // كلمة Review
          const Text(
            'Review',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),

          Row(
            children: [
              Row(
                children: List.generate(5, (index) {
                  return const Icon(Icons.star, color: Colors.orange, size: 20);
                }),
              ),

              const SizedBox(width: 8),
              const Icon(Icons.keyboard_arrow_right, color: Colors.black),
            ],
          ),
        ],
      ),
    );
  }
}
