import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newsapplication/screens/homescreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    // height of mobile screens is 1
    final height = MediaQuery.sizeOf(context).height * 1;
    // ignore: unused_local_variable
    final width = MediaQuery.sizeOf(context).width * 1;
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'images/splash_pic.jpg',
          fit: BoxFit.cover,
          // cover 90 percent of the screen

          height: height * .5,
        ),
        SizedBox(
          height: height * 0.05,
        ),
        Text(
          'TOP HEADLINES',
          style:
              GoogleFonts.anton(letterSpacing: .6, color: Colors.grey.shade700),
        ),
        SizedBox(
          height: height * 0.04,
        ),
        const SpinKitChasingDots(
          color: Colors.green,
          size: 40,
        )
      ],
    ));
  }
}
