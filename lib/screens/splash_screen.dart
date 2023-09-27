import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double logoScaleFactor = 2.5; // Factor de escala predeterminado para el logo

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      // Navegar a la siguiente pantalla después de 5 segundos
      Navigator.of(context).pushReplacementNamed('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    // Obtiene el ancho de la pantalla utilizando el contexto
    double screenWidth = MediaQuery.of(context).size.width;

    // Calcular el factor de escala para el logo en función del ancho de la pantalla
    if (screenWidth < 600) {
      // Si la pantalla es pequeña, ajusta el factor de escala
      logoScaleFactor = 1.0; // Puedes ajustar este valor según tus necesidades
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Transform.scale(
          scale: logoScaleFactor,
          child: Image.asset(
            'assets/logo.jpg', // Ruta de la imagen en tus activos
            width: 300, // Ancho de la imagen (ajusta según tus necesidades)
            height: 300, // Alto de la imagen (ajusta según tus necesidades)
          ),
        ),
      ),
    );
  }
}
