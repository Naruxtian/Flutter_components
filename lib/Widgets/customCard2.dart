import 'package:components_app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {

  final String imageUrl;
  final String? description;

  const CustomCard2({
  super.key, 
  required this.imageUrl,
  this.description
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
        ),
      elevation: 30,
      shadowColor: AppTheme.primaryColor.withOpacity(0.5),
      child: Column(
        children: [

          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/images/loading.gif'),
            width: double.infinity,
            height: 200,
            fit: BoxFit.fitHeight,
            fadeInDuration: const Duration(milliseconds: 300),
            ),
            
            if(description != null)
              Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                child: Text(description ?? "No description")
              )
            
        ],
      )
    );
  }
}