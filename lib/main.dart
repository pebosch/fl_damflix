import 'package:fl_damflix/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:fl_damflix/theme/app_theme.dart';
import 'package:flutter/services.dart';

void main() {
  // Configurar la aplicación para que se abra en pantalla completa
  //WidgetsFlutterBinding.ensureInitialized();
  //SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive); // Modo inmersivo

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DAMFLIX',
      initialRoute: 'home',
      routes: {
        'home':(context) => HomeScreen(),
        'details':(context) => DetailsScreen()
      },
      theme: AppTheme.ligthTheme
    );
  }
}