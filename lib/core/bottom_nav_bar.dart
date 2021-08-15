import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    required this.index,
    required this.callback,
    Key? key,
  }) : super(key: key);

  final int index;
  final void Function(int) callback;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        child: GNav(
          gap: 8,
          activeColor: Theme.of(context).primaryColor,
          iconSize: 24,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          duration: const Duration(milliseconds: 300),
          tabBackgroundColor: Theme.of(context).backgroundColor,
          color: Theme.of(context).primaryColor,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.favorite,
              text: 'Likes',
            ),
            GButton(
              icon: Icons.search,
              text: 'Search',
            ),
            GButton(
              icon: Icons.account_tree,
              text: 'Profile',
            ),
          ],
          selectedIndex: index,
          onTabChange: callback,
        ),
      ),
    );
  }
}
