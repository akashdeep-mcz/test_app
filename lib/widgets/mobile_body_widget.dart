import 'package:flutter/material.dart';

class MobileBodyWidget extends StatefulWidget {
  const MobileBodyWidget({super.key});

  @override
  State<MobileBodyWidget> createState() => _MobileBodyWidgetState();
}

class _MobileBodyWidgetState extends State<MobileBodyWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Deine Job website",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: size.height * 0.07, height: 1),
                  ),
                ),
                Container(
                  height: size.height * 0.4,
                  width: size.width,
                  child: Image.asset(
                    "assets/images/hand.png",
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: size.height * 0.56),
            child: Container(
              width: size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(width: 5.0, color: Colors.grey.shade300),
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12))),
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Center(
                    child: Container(
                      width: size.width,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 15),
                          backgroundColor: Color.fromARGB(255, 5, 77, 137),
                          foregroundColor: Colors.white,
                          textStyle: TextStyle(fontSize: size.height * 0.02),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text('Kostenlos Registrieren'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
