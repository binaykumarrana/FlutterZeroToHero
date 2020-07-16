import 'package:flutter/material.dart';

class TableDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Table"),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: TableHome(),
    );
  }
}

class TableHome extends StatefulWidget {
  @override
  _TableHomeState createState() => _TableHomeState();
}

class _TableHomeState extends State<TableHome> {
  double iconSize = 40;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: Table(
              border: TableBorder.all(),
              children: [
                TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(children: [
                        Icon(
                          Icons.account_box,
                          size: iconSize,
                        ),
                        Text('My Account')
                      ]),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(children: [
                        Icon(
                          Icons.settings,
                          size: iconSize,
                        ),
                        Text('Settings')
                      ]),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(children: [
                        Icon(
                          Icons.lightbulb_outline,
                          size: iconSize,
                        ),
                        Text('Ideas')
                      ]),
                    ),
                  ],
                ),
                TableRow(children: [
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.cake,
                      size: iconSize,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.voice_chat,
                      size: iconSize,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.add_location,
                      size: iconSize,
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
