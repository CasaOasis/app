import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      // Navegar a la siguiente pantalla después de 5 segundos
      Navigator.of(context).pushReplacementNamed('/next_screen');
    });
  }

  @override
  Widget build(BuildContext context) {
    // Aquí puedes construir la interfaz de usuario de tu Splash Screen
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/logo.jpg', // Ruta de la imagen en tus activos
          width: 300, // Ancho de la imagen (ajusta según tus necesidades)
          height: 300, // Alto de la imagen (ajusta según tus necesidades)
        ),
      ),
    );
  }
}
