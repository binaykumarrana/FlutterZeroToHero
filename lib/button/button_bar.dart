import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonBarDemo extends StatelessWidget {
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
          "ButtonBar Demo",
          style: TextStyle(fontFamily: 'PoppinsSemiBold'),
        ),
      ),
      body: Center(
        child: new ButtonBar(
          mainAxisSize: MainAxisSize.min,
          // this will take space as minimum as posible(to center)
          children: <Widget>[
            new RaisedButton(
              child: new Text('Hello'),
              onPressed: null,
            ),
            new RaisedButton(
              child: new Text('Hi'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
