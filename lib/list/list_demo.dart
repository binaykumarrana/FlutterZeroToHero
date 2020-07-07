import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListDemo extends StatelessWidget {

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
        title: Text("ListView Default"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: const <Widget>[
            Card(child: ListTile(title: Text('One-line ListTile'))),
            Card(
              child: ListTile(
                leading: FlutterLogo(),
                title: Text('One-line with leading widget'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('One-line with trailing widget'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              child: ListTile(
                leading: FlutterLogo(),
                title: Text('One-line with both widgets'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('One-line dense ListTile'),
                dense: true,
              ),
            ),
            Card(
              child: ListTile(
                leading: FlutterLogo(size: 56.0),
                title: Text('Two-line ListTile'),
                subtitle: Text('Here is a second line'),
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              child: ListTile(
                leading: FlutterLogo(size: 72.0),
                title: Text('Three-line ListTile'),
                subtitle:
                    Text('A sufficiently long subtitle warrants three lines.'),
                trailing: Icon(Icons.more_vert),
                isThreeLine: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
