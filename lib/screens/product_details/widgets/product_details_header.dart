import 'package:flutter/material.dart';

import '../../../core/constants/app_images.dart' show AppImages;
import '../../../core/widgets/back_arrow.dart';

class DetailsHeader extends StatelessWidget {
  const DetailsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackArrow(),
                  const Icon(
                    Icons.ios_share_outlined,
                    color: Colors.black,
                    size: 28,
                  ),
                ],
              ),
              SizedBox(height: 25),
              Image.asset(AppImages.appleBanner),
            ],
          ),
        ),
      ),
    );
  }
}
