import 'package:components_app/themes/app_theme.dart';
import 'package:flutter/material.dart';
import '../Widgets/widgets.dart';

class ListView2Screen extends StatelessWidget {
   
  final options = const['Joker', 'Mona', 'Skull', 'Panther','Fox','Queen','Oracle','Noir','Crow'];
  
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

  void showFinisher(BuildContext context, thieve){
    showDialog(
      barrierDismissible: true,
      context: context, 
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          title: Text(thieve['Name']),
          shape: RoundedRectangleBorder(borderRadius:  BorderRadiusDirectional.circular(10)),
          content: CustomCard3(imageUrl: thieve['Image']!),      
        );
      }
    );
  }

  const ListView2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phantom Thieves'),
      ),
      body: ListView.separated(
        itemBuilder: 
          (context, index) => ListTile(
            title: Text(options[index]),
            leading: const Icon(Icons.flag, color: AppTheme.secondaryColor,),
            trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.black,),
            onTap:(){
              showFinisher(context, thieves[index]);
            } ,
          ),
        separatorBuilder: (_, __) => const Divider(), 
        itemCount: options.length
        )
    );
  }
}