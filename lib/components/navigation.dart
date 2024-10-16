import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyNavigation extends StatefulWidget {
  final void Function(int)? onTabChange;

  MyNavigation({Key? key, required this.onTabChange}) : super(key: key);

  @override
  State<MyNavigation> createState() => _MyNavigationState();
}

class _MyNavigationState extends State<MyNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        color: Colors.black,
        activeColor:Colors.teal.shade800 ,
        tabActiveBorder: Border.all(color: Colors.teal.shade900),
        tabBackgroundColor:Colors.white ,
        mainAxisAlignment: MainAxisAlignment.center,
        onTabChange: (value) => widget.onTabChange?.call(value),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
           GButton(
            icon: Icons.search,
            text: 'View More Items',
            )
          ,
          GButton(
            icon: Icons.shopping_bag,
            text: 'Cart',
          ),
        ],
      ),
    );
  }
}
