import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomFonts extends StatelessWidget {
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
        title: Text(
          "Custom Fonts",
          style: TextStyle(fontFamily: 'PoppinsSemiBold'),
        ),
      ),
      body: Column(children: <Widget>[
        Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            "Regular Font",
            textAlign: TextAlign.start,
            style: TextStyle(fontFamily: 'PoppinsRegular'),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            "SemiBold Font",
            textAlign: TextAlign.start,
            style: TextStyle(fontFamily: 'PoppinsSemiBold'),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            "Bold Font",
            textAlign: TextAlign.start,
            style: TextStyle(fontFamily: 'PoppinsBold'),
          ),
        )
      ]),
    );
  }
}
