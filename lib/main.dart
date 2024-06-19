import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:untitled/constrants/str_constants.dart';
import 'package:untitled/screens/home_screen.dart';
import 'package:untitled/screens/splash_screen.dart';
import 'constrants/custom_colors.dart';

void main() {
  runApp(const Root());
}

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: StrConstants.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}


