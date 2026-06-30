import 'package:flutter/material.dart';
import 'package:grocery/core/constants/app_images.dart';

class RowCard extends StatelessWidget {
  const RowCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 105,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: const Color(0xFFF8A44C).withValues(alpha: 0.15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(AppImages.pulses),

          const SizedBox(width: 12),

          Expanded(
            child: Text(
              "Pulses",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
