import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:developer';

class AssetDemo extends StatelessWidget {
  Future<void> loadJson() async {
    log('data: ${await rootBundle.loadString('assets/config.json')}');
  }

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
          "Assets",
          style: TextStyle(fontFamily: 'PoppinsSemiBold'),
        ),
      ),
      body: Column(children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(16, 16, 0, 16),
          child: Text(
            "Asset folder image",
            style: TextStyle(fontFamily: 'PoppinsRegular'),
          ),
        ),
        Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 0, 16),
            child: Image(
              image: AssetImage('assets/ic_launcher.png'),
              width: 60,
              height: 60,
            )),
        Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 0, 16),
          child: Image.asset(
            'assets/ic_launcher.png',
            width: 60,
            height: 60,
          ),
        ),
      ]),
    );
  }
}
