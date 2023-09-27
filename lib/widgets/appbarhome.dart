import 'package:Casa_oasis/styles/app_colors.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget appBarHome(BuildContext context) {
  // Pass 'context' as an argument
  double appBarHeight = 80; // Default AppBar height
  double leadingWidth = 150; // Default leading widget width
  double iconSize = 36; // Default button icon size

  // Get the screen width using the context
  double screenWidth = MediaQuery.of(context).size.width;

  // Calculate responsive values based on screen width
  if (screenWidth < 600) {
    // If the screen is small, adjust AppBar height and leading widget width
    appBarHeight = 60;
    leadingWidth = 100;
    iconSize = 24;
  }

  return AppBar(
    toolbarHeight: appBarHeight, // Set the AppBar height
    backgroundColor: AppColors.backgroundColor, // Set the background color
    leadingWidth: leadingWidth, // Set the width of the leading widget
    leading: Padding(
      padding: const EdgeInsets.only(left: 20),
      child:
          Image.asset('assets/logo.jpg'), // Add an image as the leading widget
    ),
    actions: <Widget>[
      IconButton(
        icon: const Icon(
          Icons.person,
          color: AppColors.btnColorDark, // Set the icon color
        ),
        iconSize: iconSize, // Set the icon size
        onPressed: () {
          // Define an action for the user button
        },
      )
    ],
  );
}
