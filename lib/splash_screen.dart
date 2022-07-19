// ignore_for_file: camel_case_types, prefer_const_constructors

import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:demo_project/singIn_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), finished);
  }

  void finished() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => SignIn(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Center(
              child: Image.asset(
                'assets/Rectangle4.png',
                // height: height * 10,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child:

                      //     AnimatedSplashScreen(
                      //   splash: 'assets/logo_leads.jpeg',
                      //   nextScreen: null,
                      //   splashTransition: SplashTransition.slideTransition,
                      // ),

                      //
                      //
                      AnimatedTextKit(animatedTexts: [
                    FadeAnimatedText(
                      'Welcome',
                      textStyle: TextStyle(
                        fontSize: 30.0,
                        color: Color(0xFF2D852D),
                      ),
                    ),
                  ]),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                SpinKitCircle(
                  itemBuilder: (BuildContext context, int index) {
                    return DecoratedBox(
                      decoration: BoxDecoration(
                          color: index.isEven
                              ? Color(0xFF2D852D)
                              : Color(0xFF2D852D)),
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.1,
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.only(top: 70),
              child: Image.asset(
                'assets/Rectangle3.png',
                // height: height * 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
