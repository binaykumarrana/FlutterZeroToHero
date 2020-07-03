import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AssetDemo extends StatelessWidget {
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
          "Assets",
          style: TextStyle(fontFamily: 'PoppinsSemiBold'),
        ),
      ),
      body: Column(children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(16, 16, 0, 16),
          child: Text(
            "Asset folder image",
            style: TextStyle(fontFamily: 'PoppinsRegular'),
          ),
        ),
        Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 0, 16),
            child: Image(
              image: AssetImage('assets/ic_launcher.png'),
            )),
        Padding(
          padding: EdgeInsets.fromLTRB(16, 16, 0, 16),
          child: Text(
            "Network image",
            style: TextStyle(fontFamily: 'PoppinsRegular'),
          ),
        ),
        Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 0, 16),
            child: Image(
              width: 100,
              height: 100,
              image: NetworkImage('https://png.pngtree.com/png-clipart/20190516/original/pngtree-tricolor-indian-map-with-on-ashoka-wheel-png-image_3741576.jpg'),
            )),
      ]),
    );
  }
}
