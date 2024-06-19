import 'package:flutter/material.dart';
import 'package:untitled/constrants/custom_colors.dart';
import 'package:untitled/screens/home_screen.dart';

import '../constrants/str_constants.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.bodyLarge,
                            children: const [
                              TextSpan(
                                text: StrConstants.yeh_you,
                                style: TextStyle(fontSize: 20),
                              ),
                              WidgetSpan(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 2.0),
                                  child: Icon(Icons.waving_hand_sharp),
                                ),
                              ),
                              TextSpan(
                                text: StrConstants.now_you,
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        const Text(
                          StrConstants.now_you_can,
                          style: TextStyle(fontSize: 20),
                        ),
                        const Text(
                          StrConstants.only_front,
                          style: TextStyle(fontSize: 18),
                        ),
                        const Text(
                          StrConstants.with_flutter,
                          style: TextStyle(fontSize: 18),
                        ),
                        const Text(
                          StrConstants.full_resp,
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        const Text(
                          StrConstants.create_this,
                          style: TextStyle(fontSize: 20),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        const Text(
                          StrConstants.send_me,
                          style: TextStyle(fontSize: 20),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        const Text(
                          StrConstants.the_website,
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 25,
                ),
                MaterialButton(
                    minWidth: double.infinity,
                    elevation: 0.0,
                    highlightColor: Colors.greenAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: const BorderSide(width: 1, color: Colors.grey)),
                    color: CustomColors.white,
                    onPressed: () {
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (context) => HomeScreen()));
                    },
                    height: 50,
                    child: const Text(
                      StrConstants.mobile_view,
                      style: TextStyle(
                          color: CustomColors.seyan, fontSize: 16),
                    )),
                const SizedBox(
                  height: 15,
                ),
                MaterialButton(
                    elevation: 0.0,
                    minWidth: double.infinity,
                    highlightColor: Colors.greenAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: const BorderSide(width: 1, color: Colors.grey)),
                    color: Colors.white,
                    onPressed: () {

                    },
                    height: 50,
                    child: const Text(
                      StrConstants.desktop_view,
                      style: TextStyle(
                          color: CustomColors.seyan, fontSize: 16),
                    )),
                const SizedBox(
                  height: 15,
                ),
                MaterialButton(
                    elevation: 0.0,
                    minWidth: double.infinity,
                    highlightColor: Colors.greenAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: BorderSide(width: 1, color: Colors.grey)),
                    color: Colors.white,
                    onPressed: () {},
                    height: 50,
                    child: const Text(
                      StrConstants.desktop_scroll,
                      style: TextStyle(
                          color: CustomColors.seyan, fontSize: 16),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
