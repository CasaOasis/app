import 'package:casa_oasis/styles/app_colors.dart';
import 'package:flutter/material.dart';

class LoginField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller; // Add a parameter for the controller

  const LoginField({Key? key, required this.hintText, this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 400,
      ),
      child: TextFormField(
        controller: controller, // Assign the controller to the input field
        decoration: InputDecoration(
          fillColor: AppColors.backgroundColorgrey,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: AppColors.backgroundColorgrey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: AppColors.textColordark),
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
