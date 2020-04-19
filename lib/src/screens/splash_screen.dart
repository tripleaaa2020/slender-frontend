import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './auth/login_screen.dart';
import './homepage/dashboard_screen.dart';
import '../../utils/styles.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splash_screen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer timer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSlenderPurple,
      body: Center(
        child: Container(
          child: Image.asset(
            'assets/images/slender-logo-light-grey.png',
            fit: BoxFit.fill,
            height: 150,
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    timer = Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
}
