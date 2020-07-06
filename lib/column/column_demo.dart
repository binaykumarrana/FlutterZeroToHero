import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColumnDemo extends StatelessWidget {
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
          "Column Demo",
          style: TextStyle(fontFamily: 'PoppinsSemiBold'),
        ),
      ),
      body: Column(children: <Widget>[
        Center(child: Text("Item1")),
        Center(child: RaisedButton(child: Text("Item2"))),
        Center(child: Icon(Icons.directions_transit)),
        Center(
            child: IconButton(
          icon: Icon(Icons.volume_up),
          tooltip: 'Item4',
          onPressed: () {},
        )),
      ]),
    );
  }
}
