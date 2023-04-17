import 'package:flutter/material.dart';
import 'package:myapp/models/models.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const inicialRoute = 'home';
  static final menuOption = <MenuOption>[
//MenuOption(
    //      route: 'home',
    //    namer: 'Home Screen',
    //  screen: const HomeScreen(),
    //icon: Icons.access_time_filled),
    MenuOption(
        route: 'listview1',
        namer: 'Listviwe1',
        screen: const ListviewScreen(),
        icon: Icons.access_time_filled),
    MenuOption(
        route: 'listview2',
        namer: 'Listviwe2',
        screen: const Listvie2Screen(),
        icon: Icons.access_time_filled),
    MenuOption(
        route: 'alert',
        namer: 'Alerta',
        screen: const AlertScreen(),
        icon: Icons.access_time_filled),
    MenuOption(
        route: 'card',
        namer: 'Tarjeta',
        screen: const CardScreen(),
        icon: Icons.access_time_filled),
    MenuOption(
        route: 'avatar',
        namer: 'Circle Avatar',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_outlined),
    MenuOption(
        route: 'animated',
        namer: 'Animated screen',
        screen: const AnimatedScreen(),
        icon: Icons.play_arrow_outlined),
    MenuOption(
        route: 'inputs',
        namer: 'Inputs screen',
        screen: const InputsScreen(),
        icon: Icons.input_sharp),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => HomeScreen()});

    for (final option in menuOption) {
      appRoutes.addAll({
        option.route: (BuildContext context) => option.screen,
      });
    }

    return appRoutes;
  }

  //static Map<String, Widget Function(BuildContext)> routes = {
  //'home': (BuildContext context) => const HomeScreen(),
  //'listywiew1': (BuildContext context) => const ListviewScreen(),
  //'listywiew2': (BuildContext context) => const Listvie2Screen(),
  //'alert': (BuildContext context) => const AlertScreen(),
  //'card': (BuildContext context) => const CardScreen()
  //};

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
