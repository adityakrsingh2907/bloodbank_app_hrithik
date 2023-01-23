import 'dart:async';

import 'package:bloodbank_app/screens/onboardingscreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: InkWell(
          onTap: () => {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => OnboardingPage()))
          },
          // Timer(Duration(seconds: 2), () {
          //   Navigator.push(context,
          //       MaterialPageRoute(builder: (context) => OnboardingPage()));
          // }),

          child: Center(
            child: Image.asset(
              "assets/bloodbank.png",
            ),
          ),
        ),
      ),
    );
  }
}
