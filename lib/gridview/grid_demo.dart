import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridDemo extends StatelessWidget {
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
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 4,
          mainAxisSpacing: 8,
          children: <Widget>[
            Image.network("https://placeimg.com/500/500/any"),
            Image.network("https://placeimg.com/500/500/any"),
            Image.network("https://placeimg.com/500/500/any"),
            Image.network("https://placeimg.com/500/500/any"),
            Image.network("https://placeimg.com/500/500/any"),
            Image.network("https://placeimg.com/500/500/any"),
            Image.network("https://placeimg.com/500/500/any"),
            Image.network("https://placeimg.com/500/500/any"),
          ],
        ),
      ),
    );
  }
}
