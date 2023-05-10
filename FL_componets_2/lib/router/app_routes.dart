import 'package:flutter/material.dart';

import 'package:fl_componets_2/models/models.dart';
import 'package:fl_componets_2/screens/screens.dart';

class AppRoutes {

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption> [
      MenuOption(name: 'HomeScreen', route: 'home',  screen: const HomeScreen(), icon: Icons.access_time_outlined)
  ];

  static Map<String, Widget Function(BuildContext)> routes = {
    'home' : (context) => const HomeScreen(),
    'listview1' : (context) => const Listview1Screen(),
    'listview2' : (context) => const Listview2Screen(),
    'alert' : (context) => const AlertScreen(),
    'card' : (context) => const CardScreen()
  };

  static Route<dynamic> OnGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
        builder: (context) => const AlertScreen()
    );
  }
}