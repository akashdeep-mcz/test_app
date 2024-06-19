import 'package:flutter/material.dart';
import '../constrants/custom_colors.dart';
import '../widgets/step_item.dart';
import '../widgets/step_item_with_background.dart';

class Tab1 extends StatelessWidget {
  const Tab1({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Drei einfache Schritte\nzu deinem neuen Job",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
              color: CustomColors.black,
            ),
          ),
          StepItem(
            stepNumber: "1.",
            description: "Erstellen dein Lebenslauf",
            imagePath: 'assets/images/step1.png',
          ),
          StepItemWithBackground(
            stepNumber: "2.",
            description: "Erstellen dein Lebenslauf",
            backgroundPath: 'assets/images/bg.jpg',
            foregroundPath: 'assets/images/step2.png',
          ),
          SizedBox(height: 20),

          StepItem(
            stepNumber: "3.",
            description: "Erstellen dein Lebenslauf",
            imagePath: 'assets/images/step3.png',
          ),
        ],
      ),
    );
  }
}
