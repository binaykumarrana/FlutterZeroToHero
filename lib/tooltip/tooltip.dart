import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TooltipDemo extends StatelessWidget {
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
          title: Text("GridList Demo"),
        ),
        body: MyApp());
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
              child: Column(children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              child: Tooltip(
                  message: 'My Account',
                  child: FlatButton(
                    onPressed: (){

                    },
                    child: Icon(
                      Icons.account_box,
                      size: 50,
                    ),
                  )),
            ),
          ]))),
    );
  }
}
