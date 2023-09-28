import 'package:casa_oasis/screens/home_app.dart'; // Import the Home screen
import 'package:casa_oasis/styles/app_colors.dart'; // Import custom app colors
import 'package:casa_oasis/widgets/buttom.dart'; // Import the custom button widget
import 'package:casa_oasis/widgets/login_field.dart'; // Import the custom login field widget
import 'package:flutter/material.dart'; // Import the Flutter material package

class LoginScreen extends StatelessWidget {
  // Text editing controllers for email and password fields
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginScreen({Key? key}) : super(key: key);

  // Function to calculate responsive values for different screen sizes
  double calculateResponsiveValue(
      BuildContext context, double defaultValue, double smallScreenValue) {
    // Get the screen width using the context
    double screenWidth = MediaQuery.of(context).size.width;

    // Return the responsive value based on screen width
    return screenWidth < 600 ? smallScreenValue : defaultValue;
  }
  double calculateResponsiveValueheight(
      BuildContext context, double defaultValue, double smallScreenValue) {
    // Get the screen height using the context
    double screenHeight = MediaQuery.of(context).size.height;

    // Return the responsive value based on screen height
    return screenHeight < 1000 ? smallScreenValue : defaultValue;
  }


  @override
  Widget build(BuildContext context) {
    // Get responsive values for image size and font size
    double imgLogoSize = calculateResponsiveValue(context, 200, 140);
    double fontSize = calculateResponsiveValue(context, 35, 25);
    double boxsize1 = calculateResponsiveValueheight(context, 400, 100);

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: boxsize1,
                ),
                Image.asset(
                  'assets/logo.jpg', // Display the logo image
                  height: imgLogoSize,
                ),
                const SizedBox(height: 50),
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 400,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Email', // Display 'Email' text
                        style:
                            TextStyle(fontFamily: 'itim', fontSize: fontSize),
                      )
                    ],
                  ),
                ),
                LoginField(
                  hintText: 'Email', // Display email input field
                  controller:
                      emailController, // Connect controller to input field
                ),
                const SizedBox(height: 50),
                ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 400,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Password', // Display 'Password' text
                        style:
                            TextStyle(fontFamily: 'itim', fontSize: fontSize),
                      )
                    ],
                  ),
                ),
                LoginField(
                  hintText: 'Password', // Display password input field
                  controller:
                      passwordController, // Connect controller to input field
                ),
                const SizedBox(height: 100),
                ButtonWidget(
                  text: 'Sign In', // Display 'Sign In' text on the button
                  textColor: AppColors.textColorlight, // Set text color
                  backgroundColor:
                      AppColors.btnColorDark, // Set button background color
                  fontsize: fontSize, // Set font size
                  onPressed: () {
                    // Navigate to the Home screen when the button is pressed
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => const Home()));

                    // Action to be executed when the button is pressed.
                    // Get the values of email and password from the controllers
                    final email = emailController.text;
                    final password = passwordController.text;

                    // Print the values to the console
                    print('Email: $email');
                    print('Password: $password');

                    // You can use these values for authentication or other actions as needed
                    print('Button pressed');
                  },
                  borderRadius: 12, // Set button border radius
                ),
                // You can add more widgets here, such as input fields and buttons
              ],
            ),
          ),
        ),
      ),
    );
  }
}

