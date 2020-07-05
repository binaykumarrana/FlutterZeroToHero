import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
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
          "Buttons",
          style: TextStyle(fontFamily: 'PoppinsSemiBold'),
        ),
      ),
      body: Column(children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 0, 16),
          child: FlatButton(
            child: Text('I am FlatButton'),
            onPressed: () {
              print('You tapped on FlatButton');
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 0, 16),
          child: RaisedButton(
            child: Text('I am RaisedButton'),
            onPressed: () {
              print('You tapped on RaisedButton');
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 0, 16),
          child: FloatingActionButton(
            heroTag: 'btn1',
            child: Icon(Icons.add),
            onPressed: () {
              print('You tapped on FloatingActionButton');
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 0, 16),
          child: FloatingActionButton.extended(
            heroTag: 'btn2', // two floating button in one screen need heroTag to differentiate
            icon: Icon(Icons.add),
            label: Text('I am Extended'),
            onPressed: () {
              print('You tapped on FloatingActionButton');
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 0, 16),
          child: IconButton(
            icon: Icon(Icons.volume_up),
            tooltip: 'Increase volume by 10%',
            onPressed: () {
              print('Volume button clicked');
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 0, 16),
          child: OutlineButton(
              child: new Text("Button text"),
              onPressed: null,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0))),
        ),
      ]),
    );
  }
}
