import 'package:components_app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCard1 extends StatelessWidget {
  const CustomCard1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card( 
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.album, color: AppTheme.secondaryColor,),
            title: Text('Soy una papa'),
            subtitle: Text('Una papa caducada'),
          ),

        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: (){},
                child: const Text('Cancelar'),
              ),
              TextButton(
                onPressed: (){},
                child: const Text('Ok'),
              )
            ],
            ),
        )
        ]
      ),
    );
  }
}