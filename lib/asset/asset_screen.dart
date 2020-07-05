import 'dart:typed_data';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:developer';

class AssetDemo extends StatelessWidget {
  Future<void> loadJson() async {
    log('data: ${await rootBundle.loadString('assets/config.json')}');
  }

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
            padding: EdgeInsets.fromLTRB(16, 0, 0, 16),
            child: Image(
              image: AssetImage('assets/ic_launcher.png'),
              width: 60,
              height: 60,
            )),
        Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 0, 16),
          child: Image.asset(
            'assets/ic_launcher.png',
            width: 60,
            height: 60,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 0, 16),
          child: Text(
            "Network image",
            style: TextStyle(fontFamily: 'PoppinsRegular'),
          ),
        ),
        Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 0, 16),
            child: Image(
              width: 60,
              height: 60,
              image: NetworkImage(
                  'https://png.pngtree.com/png-clipart/20190516/original/pngtree-tricolor-indian-map-with-on-ashoka-wheel-png-image_3741576.jpg'),
            )),
        Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 0, 16),
            child: Image.network(
              'https://picsum.photos/250?image=9',
              width: 60,
              height: 60,
            )),
        Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 0, 16),
            child: FadeInImage.memoryNetwork(
              placeholder:
                  Uint8List.fromList('assets/ic_launcher.png'.codeUnits),
              image: 'https://picsum.photos/250?image=9',
              width: 60,
              height: 60,
            )),
      ]),
    );
  }
}
