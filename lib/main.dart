import 'package:casa_oasis/screens/login_screen.dart';
import 'package:casa_oasis/screens/splash_screen.dart';
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
      title: 'Casa Oasis', // Set the title of the app
      debugShowCheckedModeBanner: false, // Disable the debug banner
      initialRoute: '/', // Set the initial route
      routes: {
        '/': (context) =>
            SplashScreen(), // Define the route for the splash screen
        '/login': (context) =>
            LoginScreen(), // Define the route for the home screen
        // Define other navigation routes here
      },
    );
  }
}
