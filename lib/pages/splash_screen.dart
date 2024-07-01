import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:food_order/main.dart';
import 'package:food_order/services/auth/auth_check.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: Center(
              child: LottieBuilder.asset("assets/Lottie/cJXslvmFLd.json"),
            ),
          ),
          // SizedBox(height: 10), // Add some space between the Lottie animation and the text
          Text(
            'GoodFoods',
            style: GoogleFonts.playball(
              textStyle: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      nextScreen: const AuthCheck(),
      duration: 3,
      splashIconSize: 420,
      backgroundColor: const Color.fromRGBO(238, 255, 65, 1),
    );
  }
}
