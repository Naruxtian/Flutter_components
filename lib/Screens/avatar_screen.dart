import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phantom Thieves'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const CircleAvatar(
              backgroundColor: Colors.black,
              child: Text('PT', style: TextStyle(color: Colors.white,)),
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
            maxRadius: 150,
            backgroundImage: NetworkImage('https://www.theouterhaven.net/wp-content/uploads/2019/03/Persona-5-R-Revealed.jpg'),
         )
      ),
    );
  }
}