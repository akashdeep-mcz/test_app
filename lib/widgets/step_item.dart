import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:untitled/constrants/custom_colors.dart';


class StepItem extends StatefulWidget {
  final String stepNumber;
  final String description;
  final String imagePath;

  const StepItem({
    required this.stepNumber,
    required this.description,
    required this.imagePath,
  });

  @override
  State<StepItem> createState() => _StepItemState();
}

class _StepItemState extends State<StepItem> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
        mobile: (BuildContext context) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.stepNumber,
                style: const TextStyle(
                  fontSize: 80,
                  color: CustomColors.grey,
                ),
              ),
              Column(
                children: [
                  Image.asset(widget.imagePath,height: 140,),
                  Container(
                    margin: const EdgeInsets.only(top:10.0),
                    child: Text(
                      widget.description,
                      style: const TextStyle(
                        fontSize: 13,
                        color: CustomColors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        tablet: (BuildContext context) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.stepNumber,
                style: const TextStyle(
                  fontSize: 100,
                  color: CustomColors.grey,
                ),
              ),
              Column(
                children: [
                  Image.asset(widget.imagePath,height: 180,),
                  Container(
                    margin: const EdgeInsets.only(top:10.0),
                    child: Text(
                      widget.description,
                      style: const TextStyle(
                        fontSize: 15,
                        color: CustomColors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        desktop: (BuildContext context) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.stepNumber,
                style: const TextStyle(
                  fontSize: 130,
                  color: CustomColors.grey,
                ),
              ),
              const SizedBox(width: 20),
              Container(
                margin: const EdgeInsets.only(top:70.0),
                child: Text(
                  widget.description,
                  style: const TextStyle(
                    fontSize: 30,
                    color: CustomColors.grey,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Image.asset(widget.imagePath,height: 250,),
            ],
          ),
        )
      );

  }
}