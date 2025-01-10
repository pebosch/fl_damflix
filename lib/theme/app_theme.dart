import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  static final ThemeData ligthTheme = ThemeData.light().copyWith(
    //Color primario
    primaryColor: primary,

    //AppBar Theme
    appBarTheme: const AppBarTheme(
      backgroundColor: primary,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 24,
      )
    )
  ); 
}