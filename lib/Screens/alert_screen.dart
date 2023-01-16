import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  
  void displayDialogAndroid(BuildContext context){
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          title: const Text('Titulo'),
          shape: RoundedRectangleBorder(borderRadius:  BorderRadiusDirectional.circular(10)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
               Text('Este es el contenido de la alerta'),
               SizedBox(height: 20),
               FlutterLogo(size: 100,),
            ],
          ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context), 
            child: const Text('Cancelar')
          ),
          TextButton(
            onPressed: () => Navigator.pop(context), 
            child: const Text('Aceptar', style: TextStyle(color: Colors.indigo),)
          ),
        ],
        );
      }
    );
  }

  void displayDialogIos(BuildContext context){
    showCupertinoDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
               Text('Este es el contenido de la alerta'),
               SizedBox(height: 20),
               FlutterLogo(size: 100,),
            ],
          ),
          actions: [
          TextButton(
            onPressed: () => Navigator.pop(context), 
            child: const Text('Cancelar')
          ),
          TextButton(
            onPressed: () => Navigator.pop(context), 
            child: const Text('Aceptar', style: TextStyle(color: Colors.indigo),)
          ),
        ],
        );
      }
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
         child: ElevatedButton(
          //onPressed:() => displayDialogAndroid(context),
          //onPressed:() => displayDialogIos(context),
          onPressed: () => !Platform.isAndroid ? displayDialogAndroid(context) : displayDialogIos(context),
          child: const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Mostrar Alerta', style: TextStyle(fontSize: 18),),
          ),
         )
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}