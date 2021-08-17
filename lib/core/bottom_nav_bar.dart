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
      child: GNav(
        gap: 2,
        backgroundColor: Theme.of(context).backgroundColor,
        activeColor: Theme.of(context).primaryColor,
        color: Theme.of(context).iconTheme.color,
        iconSize: 24,
        padding: const EdgeInsets.all(20),
        duration: const Duration(milliseconds: 300),
        tabs: const <GButton>[
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
    );
  }
}
