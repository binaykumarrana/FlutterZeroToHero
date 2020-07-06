import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconDemo extends StatelessWidget {
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
          "Image",
          style: TextStyle(fontFamily: 'PoppinsSemiBold'),
        ),
      ),
      body: Column(children: <Widget>[
        Center(child: Icon(Icons.directions_transit)),
        Center(child: Icon(
          Icons.directions_transit,
          size: 70,
        )),
        Center(child: Icon(Icons.directions_transit, color:Colors.green, size: 70,)),
        Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: <Widget>[
              Icon(Icons.directions_transit, size: 40),
              Text('Trains')
            ],
          ),
        ),
        IconButton(
          icon: Icon(Icons.volume_up),
          tooltip: 'Increase volume by 10',
          onPressed: () {},
        )
      ]),
    );
  }
}
