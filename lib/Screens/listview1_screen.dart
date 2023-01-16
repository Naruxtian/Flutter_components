import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
   
  final options = const['Joker', 'Mona', 'Skull', 'Panther','Fox','Queen','Oracle','Noir','Crow'];

  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView 1'),
      ),
      body: ListView(
        children: [

          ...options.map((thieve) => 
          
          ListTile(
            title: Text(thieve),
            leading: const Icon(Icons.person_pin),
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
          ).toList(),
          
        ],
      )
    );
  }
}