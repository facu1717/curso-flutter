
import 'package:flutter/material.dart';

import 'package:fl_componets_2/models/models.dart';
import 'package:fl_componets_2/screens/screens.dart';

class AppRoutes {

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption> [
    MenuOption(name: 'HomeScreen', route: 'home',  screen: const HomeScreen(), icon: Icons.access_time_outlined),
    MenuOption(name: 'ListView1', route: 'listview1',  screen: const Listview1Screen(), icon: Icons.list_outlined),
    MenuOption(name: 'ListView2', route: 'listview2',  screen: const Listview2Screen(), icon: Icons.list_outlined),
    MenuOption(name: 'Alertas', route: 'alert',  screen: const AlertScreen(), icon: Icons.access_alarm),
    MenuOption(name: 'Card', route: 'card',  screen: const CardScreen(), icon: Icons.card_giftcard),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes()  {

    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({ option.route  : (BuildContext context) => option.screen });
    }

    return appRoutes;
  }
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home' : (context) => const HomeScreen(),
  //   'listview1' : (context) => const Listview1Screen(),
  //   'listview2' : (context) => const Listview2Screen(),
  //   'alert' : (context) => const AlertScreen(),
  //   'card' : (context) => const CardScreen()
  // };

  static Route<dynamic> OnGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
        builder: (context) => const AlertScreen()
    );
  }
}