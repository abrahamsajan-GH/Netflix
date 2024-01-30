import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:netflix_clone/presentation/landing/screen_landing.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _opacityLevel = 0.0;

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      setState(() {
        _opacityLevel = 1.0;
      });
    });

    Timer(const Duration(seconds: 6), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ScreenLanding()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _opacityLevel,
      duration: const Duration(seconds: 1),
      curve: Curves.easeIn,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Lottie.network(
          'https://assets1.lottiefiles.com/private_files/lf30_is6flrfu.json',
          repeat: false,
          frameRate: const FrameRate(60),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
