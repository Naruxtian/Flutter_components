import 'package:components_app/router/app_routes.dart';
import 'package:components_app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
      ),
      body: ListView.separated(
        /*itemBuilder: (context, index) => ListTile(
          title: const Text('Ruta'),
          leading: const Icon(Icons.ac_unit),
          onTap: () {
            /*final route = MaterialPageRoute(
              builder: (context) => const ListView1Screen()
              );
            Navigator.push(context, route);*/

            Navigator.pushNamed(context, 'listView2');
          },*/
        itemBuilder: (context, index) => ListTile(
          title: Text(AppRoutes.menuOptions[index].name),
          leading: Icon(AppRoutes.menuOptions[index].icon, color: AppTheme.secondaryColor,),
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);
          },
        ),
        separatorBuilder: (_,__) => const Divider(), 
        itemCount: AppRoutes.menuOptions.length
        ),
    );
  }
}