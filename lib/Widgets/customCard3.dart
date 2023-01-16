import 'package:components_app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCard3 extends StatelessWidget {

  final String imageUrl;

  const CustomCard3({
  super.key, 
  required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child:
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/images/loading.gif'),
            width: double.maxFinite,
            height: 150,
            fit: BoxFit.fill,
            fadeInDuration: const Duration(milliseconds: 300),
            ),
    );
  }
}