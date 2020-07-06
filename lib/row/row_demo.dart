import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowDemo extends StatelessWidget {
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
            "Row Demo",
            style: TextStyle(fontFamily: 'PoppinsSemiBold'),
          ),
        ),
        body: Column(children: <Widget>[
          Row(children: <Widget>[
            Expanded(
              child: Text("Item1"),
            ),
            Expanded(
              child: Image.asset("assets/ic_launcher.png"),
            ),
            Expanded(
              child: RaisedButton(child: Text('RaisedButton')),
            ),
          ]),
          Row(
            children: <Widget>[
              Expanded(
                child: Text('Deliver features faster',
                    textAlign: TextAlign.center),
              ),
              Expanded(
                child: Text('Craft beautiful UIs', textAlign: TextAlign.center),
              ),
              Expanded(
                child: FittedBox(
                  fit: BoxFit.contain, // otherwise the logo will be tiny
                  child: const FlutterLogo(),
                ),
              ),
            ],
          ),
        ]));
  }
}
