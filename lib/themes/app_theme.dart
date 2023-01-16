import 'package:flutter/material.dart';

class AppTheme{

static const Color primaryColor = Colors.red;
static const Color secondaryColor = Colors.deepOrange;
static const Color thirdColor = Colors.blueAccent;

static final ThemeData darkTheme = ThemeData.dark().copyWith(
        primaryColor: primaryColor,

        appBarTheme: const AppBarTheme(
          color: primaryColor,
          centerTitle: true,
          elevation: 0,
        ),

        //Tema de los text button
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: primaryColor, 
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold
            )
          )
        ),

        //Tema de los botones flotantes
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primaryColor,
        ),

         //Tema de los elevated button
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            shape: const StadiumBorder(),
          )
        ),

      );

static final ThemeData lightTheme = ThemeData.light().copyWith(
        primaryColor: primaryColor,

        //Tema del appBar
        appBarTheme: const AppBarTheme(
          color: primaryColor,
          centerTitle: true,
          elevation: 0,
        ),

        //Tema de los text button
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: primaryColor, 
            textStyle: const TextStyle(
              fontWeight: FontWeight.bold
            )
          )
        ),

        //Tema de los botones flotantes
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primaryColor,
        ),

        //Tema de los elevated button
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            shape: const StadiumBorder(),
          )
        ),


        //Tema de los input
        inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: thirdColor),

          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: thirdColor),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
          ),

          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: thirdColor),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
          ),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
          )
        )

      );

}