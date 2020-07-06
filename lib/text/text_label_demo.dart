import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextLabelDemo extends StatelessWidget {
  String _name = "Binay";

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
          'Text/Label',
          style: TextStyle(fontFamily: 'PoppinsRegular'),
        ),
      ),
      body: Column(children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(16, 8, 0, 16),
          child: Text(
            'Simple text',
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(16, 8, 0, 16),
          child: Text(
            'Custom Text',
            style: TextStyle(
                backgroundColor: Colors.grey,
                fontFamily: 'PoppinsRegular',
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(16, 8, 0, 16),
          padding: const EdgeInsets.all(4.0),
          decoration:
              BoxDecoration(border: Border.all(color: Colors.blueAccent)),
          child: Text('Text with border'),
        ),
        Container(
            margin: const EdgeInsets.fromLTRB(16, 8, 0, 16),
            padding: const EdgeInsets.all(4.0),
            child: RichText(
              text: TextSpan(
                text: 'Rich',
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                      text: 'Text',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: ' Demo!'),
                ],
              ),
            )),
        Container(
          padding: EdgeInsets.fromLTRB(16, 8, 0, 16),
          child: Text(
            'Hello, $_name! How are you?',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ]),
    );
  }
}
