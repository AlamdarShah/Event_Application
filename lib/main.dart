import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:events/screens/homePage.dart';
import 'package:events/screens/loginPage.dart';
import 'package:events/screens/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      // home: AnimatedSplashScreen(
      //   animationDuration: Duration(milliseconds: 3000),
      //   // splash: ClipRRect(
      //   //   borderRadius: BorderRadius.circular(25),
      //   //   child: Image.asset("assets/images/logo.png")),
      //   splash: CircleAvatar(
      //     backgroundImage: AssetImage("assets/images/logo.png"),
      //     radius: 200,
      //   ),
      //   splashIconSize: double.infinity,
      //   duration: 2000,
      //   splashTransition: SplashTransition.fadeTransition,
      //   nextScreen: LoginPage(),
      // ),
    );
  }
}
