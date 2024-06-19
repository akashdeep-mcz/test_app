import 'package:flutter/material.dart';

class DesktopBodyWidget extends StatefulWidget {
  const DesktopBodyWidget({super.key});

  @override
  State<DesktopBodyWidget> createState() => _DesktopBodyWidgetState();
}

class _DesktopBodyWidgetState extends State<DesktopBodyWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.66,
      width: size.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: <Color>[
            Color.fromRGBO(235, 244, 255, 1),
            Color.fromRGBO(230, 255, 250, 1)
          ],
        ),
      ),
      //color: const Color.fromARGB(255, 205, 239, 255),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Deine Job",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: size.height * 0.07, height: 1),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Text(
                  "website",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: size.height * 0.07, height: 1),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                      backgroundColor: const Color.fromARGB(255, 3, 63, 111),
                      foregroundColor: Colors.white,
                      textStyle: TextStyle(fontSize: size.height * 0.02),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text('Kostenlos Registrieren'),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: size.width * 0.05,
            ),
            Container(
              height: size.height * 0.45,
              width: size.height * 0.45,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage("assets/images/hand.png"))),
            )
          ],
        ),
      ),
    );
  }
}
