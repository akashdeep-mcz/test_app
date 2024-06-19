import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(12),
            bottomLeft: Radius.circular(12),
          ),
          border: const Border(
            top: BorderSide(
              color: Color.fromRGBO(9, 130, 206, 1),
              width: 4.0,
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 10,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 40,
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Login",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromRGBO(49, 151, 149, 1)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
