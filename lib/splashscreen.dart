import 'package:flutter/material.dart';
import 'package:plan_t/firstpage.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const FirstPage(
                  title: 'Plan The Plant',
                )),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'logo/logo.png',
                width: 300,
                height: 300,
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color(0xffb3e9c7),
            Color(0xff7edfa0),
            Color(0xff7edfa0),
            Color(0xffb3e9c7)
          ],
          stops: [0.33, 0.33, 0.66, 0.66],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        )),
      ),
    );
  }
}
