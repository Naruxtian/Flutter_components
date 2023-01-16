import 'package:flutter/material.dart';

import '../Widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  final thieves = const[
    {'Name': 'Joker', 'Image': 'https://images3.alphacoders.com/121/1210766.png'},
    {'Name': 'Mona', 'Image': 'https://images8.alphacoders.com/121/1210765.png'},
    {'Name': 'Skull', 'Image': 'https://images5.alphacoders.com/121/thumb-1920-1210762.png'},
    {'Name': 'Panther', 'Image': 'https://images3.alphacoders.com/121/thumb-1920-1210760.png'},
    {'Name': 'Fox', 'Image': 'https://images6.alphacoders.com/121/1210764.png'},
    {'Name': 'Queen', 'Image': 'https://images6.alphacoders.com/121/1210771.png'},
    {'Name': 'Oracle', 'Image': 'https://images3.alphacoders.com/121/1210768.png'},
    {'Name': 'Noir', 'Image': 'https://images5.alphacoders.com/121/1210770.png'},
    {'Name': 'Crow', 'Image': 'https://images8.alphacoders.com/121/1210769.png'},
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          
          const CustomCard1(),
          const SizedBox(height: 20),
          const CustomCard2(
            imageUrl: 'https://assets.nintendo.com/image/upload/c_fill,w_1200/q_auto:best/f_auto/dpr_2.0/ncom/es_LA/games/switch/p/persona-5-royal-switch/hero'),
          const SizedBox(height: 10),

            ...thieves.map((thieve) =>
              CustomCard2(
                  imageUrl: thieve['Image']!,
                  description: thieve['Name'],
              ),
            ).toList(),      
        ],
      )
    );
  }
}
