import 'package:flutter/material.dart';
import 'package:untitled/constrants/str_constants.dart';

import '../constrants/custom_colors.dart';


class SplashWidget extends StatelessWidget {
  const SplashWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Image.asset('assets/images/rocket.png')],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            StrConstants.flutterTestIndex,
            style: TextStyle(
                fontSize: 70,
                fontWeight: FontWeight.normal,
                color: CustomColors.seyan),
          ),

        ],
      ),
    );
  }
}
