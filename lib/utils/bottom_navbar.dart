import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import '../Buy Gold/conversion.dart';
import '../Screens/home_screen.dart';
import '../Sell Gold/sell_option.dart';
import '../account/account_screen.dart';

class TransparentGoldNavBar extends StatefulWidget {
  @override
  _TransparentGoldNavBarState createState() => _TransparentGoldNavBarState();
}

class _TransparentGoldNavBarState extends State<TransparentGoldNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    ConversionScreen(),
    SellScreen(),
    AccountScreen(),


  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.react, // Choose from different styles
        backgroundColor: Colors.black,
        activeColor: Colors.amber,
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.shopping_cart, title: 'Buy'),
          TabItem(icon: Icons.sell, title: 'Sell'),
          TabItem(icon: Icons.person, title: 'Profile'),
        ],
        initialActiveIndex: _selectedIndex, // optional, default as 0
        onTap: _onItemTapped,
      ),
    );
  }
}
