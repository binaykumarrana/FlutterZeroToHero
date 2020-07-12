import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomSheetDemo extends StatelessWidget {
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
          title: Text("BottomSheet Demo"),
        ),
        body: BottomSheet1());
  }
}

class BottomSheet1 extends StatefulWidget {
  @override
  _BottomSheetState createState() => _BottomSheetState();
}

class _BottomSheetState extends State<BottomSheet1> {
  @override
  void setState(fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text("Show BottomSheet"),
        onPressed: ()  async {
          _settingModalBottomSheet(context);
        },
      ),
    );
  }
}

Future<void> _settingModalBottomSheet(BuildContext context) async {
  Future<void> future = showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext bc) {
        return Center(
          child: Wrap(
            children: <Widget>[
              ListTile(
                  leading: Icon(Icons.music_note),
                  title: Text("Music"),
                  onTap: () => {}),
              ListTile(
                leading: Icon(Icons.videocam),
                title: Text("Video"),
                onTap: () => {},
              ),
              ListTile(
                  leading: Icon(Icons.music_note),
                  title: Text("Image"),
                  onTap: () => {}),
            ],
          ),
        );
      })
      .whenComplete(() {
    print('Hey there, I\'m calling after hide bottomSheet');
  });
  // Detect when it closes
  await future.then((onValue) {
  });
}
