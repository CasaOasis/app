import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text; // Text displayed on the button
  final Function onPressed; // Function executed when the button is pressed
  final Color backgroundColor; // Button's background color
  final Color textColor; // Text color of the button
  final double fontsize; // Font size of the button text
  final double borderRadius; // Button's border radius

  // Constructor of the widget
  const ButtonWidget({
    Key? key,
    required this.text, // Requires the button's text
    required this.onPressed, // Requires the function when the button is pressed
    required this.backgroundColor, // Requires the button's background color
    required this.textColor, // Requires the button text color
    required this.fontsize, // Requires the font size of the button text
    this.borderRadius = 8.0, // Default value for the border radius
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed as void
          Function()?, // Assigns the function to the press event
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor, // Sets the button's background color
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(borderRadius), // Applies the border radius
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 20, vertical: 10), // Adds space around the text
        child: Text(
          text, // Displays the text on the button
          style: TextStyle(
            color: textColor, // Sets the text color
            fontFamily: 'itim', // Sets the font family
            fontWeight: FontWeight.normal, // Sets normal font weight
            fontSize: fontsize, // Sets the font size
          ),
        ),
      ),
    );
  }
}
