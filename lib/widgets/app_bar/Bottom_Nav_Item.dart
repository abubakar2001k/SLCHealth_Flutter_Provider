
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slc_health/widgets/app_bar/custom_bottom_nav_item.dart';


class BottomNavItem with ChangeNotifier{

int _currentindex = 0;

int get currentIndex => _currentindex;

final List<CustomBottomNavItem> navItems = [
CustomBottomNavItem(
    iconPath: "assets/images/Home.png",
    label: "",
    badgeText:'',
    selectedIconPath: "assets/images/Home.png"
),
  CustomBottomNavItem(
      iconPath: "assets/images/Vector (1).png",
      label: "",
      badgeText:'',
      selectedIconPath: "assets/images/Vector (1).png"
  ),
  CustomBottomNavItem(
      iconPath: "assets/images/Like.png",
      label: "",
      badgeText:'',
      selectedIconPath: "assets/images/Like.png"
  ),
  CustomBottomNavItem(
      iconPath: "assets/images/User.png",
      label: "",
      badgeText:'',
      selectedIconPath: "assets/images/User.png"
  ),
];
// Change the selected index and notify listeners
  void setIndex(int index) {
    _currentindex = index;
    notifyListeners();
  }
}

// final List<BottomNavItem> navItems = [
// BottomNavItem(
// icon: Icons.money,
// selectedIcon: Icons.home,
// label: 'Expense',
// ),
