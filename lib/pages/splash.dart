import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    return Timer(Duration(seconds: 2),
        () => Navigator.of(context).pushReplacementNamed('/welcome'));
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(27, 174, 118, 1),
        child: Center(
          child: Image.asset('assets/placeholder.png'),
        ),
      ),
    );
  }
}
