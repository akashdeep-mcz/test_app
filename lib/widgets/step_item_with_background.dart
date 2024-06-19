import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../constrants/custom_colors.dart';


class StepItemWithBackground extends StatelessWidget {
  final String stepNumber;
  final String description;
  final String backgroundPath;
  final String foregroundPath;

  const StepItemWithBackground({
    required this.stepNumber,
    required this.description,
    required this.backgroundPath,
    required this.foregroundPath,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            height: 250,
            backgroundPath,
            fit: BoxFit.cover,
          ),
        ),
        Positioned.fill(
          child: Container(
            color: Colors.white.withOpacity(0.8), // Adjust the opacity as needed
          ),
        ),
    ScreenTypeLayout.builder(
      mobile: (BuildContext context) => Container(color:Colors.blue),
      tablet: (BuildContext context) => Padding(
        padding:const EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  stepNumber,
                  style: const TextStyle(
                    fontSize: 100,
                    color: CustomColors.grey,
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  margin: const EdgeInsets.only(top:70.0),
                  child: Text(
                    description,
                    style: const TextStyle(
                      fontSize: 30,
                      color: CustomColors.grey,
                    ),
                  ),
                ),
              ],
            ),

            Image.asset(foregroundPath, height: 180,),
            const SizedBox(width: 20),
          ],
        ),
      ),
      desktop: (BuildContext context) => Padding(
        padding:const EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(foregroundPath),
            const SizedBox(width: 20),
            Text(
              stepNumber,
              style: const TextStyle(
                fontSize: 130,
                color: CustomColors.grey,
              ),
            ),
            const SizedBox(width: 20),
            Container(
              margin: const EdgeInsets.only(top:70.0),
              child: Text(
                description,
                style: const TextStyle(
                  fontSize: 30,
                  color: CustomColors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    ),

      ],
    );
  }
}


