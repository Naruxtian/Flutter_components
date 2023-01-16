import 'package:components_app/models/models.dart';
import 'package:flutter/material.dart';
import '../Screens/screens.dart';

class AppRoutes{
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    
    MenuOption(
      route: 'listView1', 
      name: 'List View 1', 
      screen: const ListView1Screen(), 
      icon: Icons.list_rounded),
    MenuOption(
      route: 'listView2', 
      name: 'List View 2', 
      screen: const ListView2Screen(), 
      icon: Icons.list_alt_rounded),
    MenuOption(
      route: 'alert', 
      name: 'Alertas', 
      screen: const AlertScreen(), 
      icon: Icons.notifications),
    MenuOption(
      route: 'card', 
      name: 'Cards', 
      screen: const CardScreen(), 
      icon: Icons.credit_card_rounded),
    MenuOption(
      route: 'avatar', 
      name: 'Avatar', 
      screen: const AvatarScreen(), 
      icon: Icons.account_circle_rounded),
    MenuOption(
      route: 'animated', 
      name: 'Animaciones', 
      screen: const AnimatedScreen(), 
      icon: Icons.play_circle_outline),
    MenuOption(
      route: 'inputs', 
      name: 'Inputs', 
      screen: const InputScreen(), 
      icon: Icons.input_rounded),
    MenuOption(
      route: 'slider', 
      name: 'Sliders & checks', 
      screen: const SliderScreen(), 
      icon: Icons.sledding_rounded),
    MenuOption(
      route: 'listViewBuilder', 
      icon: Icons.build_circle_outlined, 
      name: 'InfiniteScroll & PullToRefresh', 
      screen: const ListViewBuilderScreen())
  ];

  /*static Map<String, Widget Function(BuildContext)> routes = {
        'home': (BuildContext context) => const HomeScreen(),
        'listView1':(BuildContext context) => const ListView1Screen(),
        'listView2':(BuildContext context) => const ListView2Screen(),
        'alert':(BuildContext context) => const AlertScreen(),
        'card':(BuildContext context) => const CardScreen(),
      };
  */

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

  appRoutes.addAll({
    'home': (BuildContext context) => const HomeScreen(),
  });

    for(final option in menuOptions){
      appRoutes.addAll({
        option.route: (BuildContext context) => option.screen
      });
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
        //print(settings);
        return MaterialPageRoute(
          builder: (context) => const AlertScreen()
        );
      }
}