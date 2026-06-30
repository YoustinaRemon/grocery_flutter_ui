import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery/core/constants/app_images.dart';
import 'package:grocery/screens/account/account_screen.dart';
import 'package:grocery/screens/cart/cart_screen.dart';
import 'package:grocery/screens/explore/explore_screen.dart';
import 'package:grocery/screens/favorite/favorite_screen.dart';
import 'package:grocery/screens/home/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      HomeScreen(),
      ExploreScreen(),
      CartScreen(),
      FavoriteScreen(),
      AccountScreen(),
    ];

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: activeIndex,
        onTap: (index) => setState(() {
          activeIndex = index;
        }),
        selectedItemColor: Color(0xFF53B175),

        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImages.shop,
              colorFilter: activeIndex == 0
                  ? const ColorFilter.mode(Color(0xFF53B175), BlendMode.srcIn)
                  : null,
            ),
            label: "Shop",
          ),

          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImages.explore,
              colorFilter: activeIndex == 1
                  ? const ColorFilter.mode(Color(0xFF53B175), BlendMode.srcIn)
                  : null,
            ),
            label: "Explore",
          ),

          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImages.cart,
              colorFilter: activeIndex == 2
                  ? const ColorFilter.mode(Color(0xFF53B175), BlendMode.srcIn)
                  : null,
            ),
            label: "Cart",
          ),

          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImages.fav,
              colorFilter: activeIndex == 3
                  ? const ColorFilter.mode(Color(0xFF53B175), BlendMode.srcIn)
                  : null,
            ),
            label: "Favorite",
          ),

          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImages.profile,
              colorFilter: activeIndex == 4
                  ? const ColorFilter.mode(Color(0xFF53B175), BlendMode.srcIn)
                  : null,
            ),
            label: "Profile",
          ),
        ],
      ),
      body: screens[activeIndex],
    );
  }
}
