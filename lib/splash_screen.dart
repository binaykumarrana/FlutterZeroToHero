import 'package:flutter/material.dart';
import 'dart:async';
import 'package:widgets/home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 3);
    return new Timer(duration, route);
  }

  route() {
    Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => HomeScreen()
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(
          'Welcome to Flutter\nZero to Hero!',
          textAlign: TextAlign.center,
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Colors.red[600],
            fontSize: 21.0,
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }
}