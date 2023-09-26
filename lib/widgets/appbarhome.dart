import 'package:flutter/material.dart';

PreferredSizeWidget appBarHome(BuildContext context) {
  // Pasamos 'context' como argumento
  double appBarHeight = 80; // Altura predeterminada de la AppBar
  double leadingWidth = 150; // Ancho predeterminado del widget leading
  double iconSize = 36; // Tamaño predeterminado del ícono del botón

  // Obtener el ancho de la pantalla utilizando el contexto
  double screenWidth = MediaQuery.of(context).size.width;

  // Calcular valores responsivos en función del ancho de la pantalla
  if (screenWidth < 600) {
    // Si la pantalla es pequeña, ajusta la altura de la AppBar y el ancho del widget leading
    appBarHeight = 60;
    leadingWidth = 100;
    iconSize = 24;
  }

  return AppBar(
    toolbarHeight: appBarHeight,
    backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
    leadingWidth: leadingWidth,
    leading: Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Image.asset('assets/logo.jpg'),
    ),
    actions: <Widget>[
      IconButton(
        icon: const Icon(
          Icons.person,
          color: Colors.black,
        ),
        iconSize: iconSize,
        onPressed: () {
          // Acción para el botón de usuario
        },
      )
    ],
  );
}

