import 'package:fl_damflix/screens/details_screen.dart';
import 'package:fl_damflix/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DAMFLIX',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home':(context) => HomeScreen(),
        'details':(context) => DetailsScreen()
      },
    );
  }
}