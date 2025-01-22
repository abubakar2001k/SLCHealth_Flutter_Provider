import 'package:flutter/material.dart';

class CustomBottomNavItem{
  final String iconPath;
  final String selectedIconPath;
  final String label;
  final String badgeText;

  CustomBottomNavItem({
    required this.iconPath, required this.label, required this.badgeText, required this.selectedIconPath
});
}