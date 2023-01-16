import 'dart:math';

import 'package:components_app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
   
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  double _width = 50;
  double _height = 50;
  Color _color = AppTheme.primaryColor;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  void changeShape () {
    final random = Random();

    _width = random.nextInt(350).toDouble() + 50;
    _height = random.nextInt(350).toDouble()+ 50;
    _color = Color.fromRGBO(
      random.nextInt(255), 
      random.nextInt(255), 
      random.nextInt(255), 
      1
    );
    _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble() + 40);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
         child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          //curve: Curves.easeOutCubic,
          curve: Curves.elasticOut,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color,
          ),
         )
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.play_circle_outline_sharp, size: 35),
        onPressed: () => changeShape(),
      ),
    );
  }
}