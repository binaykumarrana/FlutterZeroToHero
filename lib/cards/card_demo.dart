import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: MyCardClass(),
    );
  }
}

class MyCardClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.album),
                  title: Text('The Enchanted Nightingale'),
                  subtitle:
                      Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                ),
                ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: const Text('BUY TICKETS'),
                      onPressed: () {},
                    ),
                    FlatButton(
                      child: const Text('LISTEN'),
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
          Card(
              margin: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'assets/ic_launcher.png',
                    width: double.infinity,
                    height: 120,
                    fit: BoxFit.fitWidth,
                  ),
                  const ListTile(
                    title: Text('The Enchanted Nightingale'),
                    subtitle:
                    Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
