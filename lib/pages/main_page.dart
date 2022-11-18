import 'package:dribble_coffee_ui/pages/favourite_page.dart';
import 'package:dribble_coffee_ui/pages/home_page.dart';
import 'package:dribble_coffee_ui/pages/notifications_page.dart';
import 'package:dribble_coffee_ui/pages/shopping_cart_page.dart';
import 'package:dribble_coffee_ui/theme/colors.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = const [
    HomePage(),
    ShoppingCartPage(),
    FavouritePage(),
    NotificationsPage(),
  ];

  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: CustomColors.customBlack.withOpacity(0.9),
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: customOrange,
        unselectedItemColor: CustomColors.customGreyLightUnselected,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: 'Shopping Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favourite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notifications'),
        ],
      ),
    );
  }
}
