import 'package:flutter/material.dart';

void main() {
  runApp(Splash(),);
}

class Splash extends StatelessWidget {
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
