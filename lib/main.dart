import 'package:Casa_oasis/screens/home_app.dart';
import 'package:Casa_oasis/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Casa Oasis',
      theme: ThemeData(
        primaryColor: Color(0x3A3A3A),
      ),    
      debugShowCheckedModeBanner: false,
            initialRoute: '/',  
      routes: {
        '/': (context) => SplashScreen(),
        '/next_screen': (context) => Home(),
        // Otras rutas de navegación
      },
    );
  }
}