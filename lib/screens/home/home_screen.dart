import 'package:flutter/material.dart';
import '../../core/widgets/search_field.dart';
import 'widgets/custom_card.dart';
import '../../core/constants/app_images.dart';
import 'widgets/home_header.dart';
import 'widgets/see_all_line_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 28),
                Align(
                  alignment: Alignment.topLeft,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios),
                  ),
                ),
                HomeHeader(),

                SizedBox(height: 20),

                CustomSearch(),
                SizedBox(height: 20),
                Image.asset(AppImages.banner, width: double.infinity),
                SeeAllLine(),
                SizedBox(height: 20),

                Row(
                  children: [
                    Expanded(
                      child: CustomCard(
                        image: AppImages.banana,
                        title: 'Organic Bananas',
                        subtitle: '7pcs, Priceg',
                        price: '\$4.99',
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: CustomCard(
                        image: AppImages.apple,
                        title: 'Red Apple',
                        subtitle: '1kg, Priceg',
                        price: '\$4.99',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
