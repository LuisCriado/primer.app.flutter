import 'package:flutter/material.dart' show IconData, Widget;

class MenuOption {
  final String route;
  final IconData icon;
  final String namer;
  final Widget screen;

  MenuOption({
              required this.route,
              required this.icon,
              required this.namer,
              required this.screen
  })
  ;
}
