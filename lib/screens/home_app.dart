import 'package:casa_oasis/styles/app_colors.dart';
import 'package:casa_oasis/widgets/appbarhome.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarHome(context),
      body: const Column(
        children: [
          SingleChildScrollView(
            scrollDirection:
                Axis.horizontal, // Establece el desplazamiento horizontal
            child: Row(
              children: [
                Text(
                  "Casa oasis ",
                  style: TextStyle(fontSize: 25, color: AppColors.textColordark, fontFamily: 'itim'),
                ),
                Text(
                  "Casa oasis ",
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  "Casa oasis ",
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  "Casa oasis ",
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  "Casa oasis ",
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  "Casa oasis ",
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  "Casa oasis ",
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  "Casa oasis ",
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  "Casa oasis ",
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  "Casa oasis ",
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  "Casa oasis ",
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  "Casa oasis ",
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
