import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LinearProgressDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Circular Progress Demo"),
      ),
      body: MyLinearProgressState(),
    );
  }
}

class MyLinearProgressState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyLinearProgressState();
  }
}

class _MyLinearProgressState extends State<MyLinearProgressState> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(16.0),
          child: LinearProgressIndicator(backgroundColor: Colors.lightBlue),
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: LinearProgressIndicator(
            backgroundColor: Colors.lightBlue,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow),
          ),
        ),
      ],
    );
  }
}
