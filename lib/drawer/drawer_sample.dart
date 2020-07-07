import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  final appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appTitle)),
      body: Center(
        child: Text("My Page!"),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(
              color: Colors.grey,
              height: 1,
              thickness: 1,
              indent: 0,
              endIndent: 0,
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(
              color: Colors.grey,
              height: 1,
              thickness: 1,
              indent: 0,
              endIndent: 0,
            ),
            ListTile(
              title: Text('Item 3'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(
              color: Colors.grey,
              height: 1,
              thickness: 1,
              indent: 0,
              endIndent: 0,
            ),
            ListTile(
              title: Text('Item 4'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(
              color: Colors.grey,
              height: 1,
              thickness: 1,
              indent: 0,
              endIndent: 0,
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(
              color: Colors.grey,
              height: 1,
              thickness: 1,
              indent: 0,
              endIndent: 0,
            ),
          ],
        ),
      ),
    );
  }
}
