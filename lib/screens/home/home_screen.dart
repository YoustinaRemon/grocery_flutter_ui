import 'package:flutter/material.dart';
import 'package:grocery/screens/home/widgets/listview_for_groceries.dart';
import '../../core/widgets/back_arrow.dart';
import '../../core/widgets/search_field.dart';
import '../../core/constants/app_images.dart';
import 'widgets/home_header.dart';
import 'widgets/list_view_for_product_card.dart';
import 'widgets/see_all_action_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: ListView(
            children: [
              BackArrow(),
              HomeHeader(),
              SizedBox(height: 10),
              CustomSearch(),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.location_on),
                  Text(
                    'Dhaka, Banassre',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Image.asset(AppImages.banner, width: double.infinity),
              SeeAllLine(title: 'Exclusive Offer'),
              ListviewProductCard(),
              SeeAllLine(title: 'Best Selling'),
              ListviewProductCard(),
              SeeAllLine(title: 'Groceries'),
              SizedBox(height: 10),
              ListviewForGroceries(),
              SizedBox(height: 20),
              ListviewProductCard(),
            ],
          ),
        ),
      ),
    );
  }
}
