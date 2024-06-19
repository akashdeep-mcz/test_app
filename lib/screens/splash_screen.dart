import 'dart:async';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:untitled/constrants/custom_colors.dart';
import '../widgets/splash_widget.dart';
import 'intro_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const IntroScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.blue,
      body: ScreenTypeLayout.builder(
          mobile: (BuildContext context) => const SplashWidget(),
          tablet: (BuildContext context) => const Center(
            child: SizedBox(
              width: 450,
              child: SplashWidget(),
            ),
          ),
          desktop: (BuildContext context) => const Center(
            child: SizedBox(
              width: 850,
              child: SplashWidget(),
            ),
          ),
        ),

    );
  }
}
