import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class BottomNavBar extends StatefulWidget {
  void Function(int)? onTabChange;
   BottomNavBar({super.key,required this.onTabChange});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: GNav(
        onTabChange: (value) => widget.onTabChange!(value) ,
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.white,
        color: Colors.grey[300],
        tabActiveBorder: Border.all(color: Colors.white),
        gap: 8,
        tabs: const [
       // shop tab
       GButton(
        icon: Icons.home,
        text: 'Shop',
        
        ),
        //cart tab
        GButton(
        icon: Icons.shopping_bag,
        text: 'Cart',
        
        ),
      ],
      ),
    );
  }
}