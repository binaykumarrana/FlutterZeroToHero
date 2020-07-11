import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDemo extends StatelessWidget {
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
        title: Text("AlertDialog Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new RaisedButton(
              onPressed: () {
                _ackAlert(context);
              },
              child: const Text("Ack Dialog"),
            ),
            new RaisedButton(
              onPressed: () async {
                final ConfirmAction action = await _asyncConfirmDialog(context);
                print("Confirm Action $action");
              },
              child: const Text("Confirm Dialog"),
            ),
            new RaisedButton(
              onPressed: () async {
                final Departments deptName = await _asyncSimpleDialog(context);
                print("Selected Departement is $deptName");
              },
              child: const Text("Simple dialog"),
            ),
            new RaisedButton(
              onPressed: () async {
                final String currentTeam = await _asyncInputDialog(context);
                print("Current team name is $currentTeam");
              },
              child: const Text("Input Dialog"),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> _ackAlert(BuildContext context) {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    // false = user must tap button, true = tap outside dialog
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        title: Text('Not in stock'),
        content: Text('This item is no longer available'),
        actions: <Widget>[
          FlatButton(
            child: Text('OK'),
            onPressed: () {
              Navigator.of(dialogContext).pop(); // Dismiss alert dialog
            },
          ),
        ],
      );
    },
  );
}

enum ConfirmAction { CANCEL, ACCEPT }

Future<ConfirmAction> _asyncConfirmDialog(BuildContext context) async {
  return showDialog<ConfirmAction>(
    context: context,
    barrierDismissible: false,
    // false = user must tap button, true = tap outside dialog
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        title: Text('Reset settings?'),
        content: Text(
            'This will reset your device to its default factory settings.'),
        actions: <Widget>[
          FlatButton(
            child: Text('CANCEL'),
            onPressed: () {
              Navigator.of(dialogContext)
                  .pop(ConfirmAction.CANCEL); // Dismiss alert dialog
            },
          ),
          FlatButton(
            child: const Text('ACCEPT'),
            onPressed: () {
              Navigator.of(context).pop(ConfirmAction.ACCEPT);
            },
          ),
        ],
      );
    },
  );
}

Future<String> _asyncInputDialog(BuildContext context) async {
  String teamName = '';
  return showDialog<String>(
    context: context,
    barrierDismissible: false,
    // false = user must tap button, true = tap outside dialog
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        title: Text('Enter current team'),
        content: Row(
          children: <Widget>[
            Expanded(
              child: TextField(
                autofocus: true,
                decoration: InputDecoration(
                    labelText: 'Team Name', hintText: 'eg. Juventus F.C.'),
                onChanged: (value) {
                  teamName = value;
                },
              ),
            ),
          ],
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('OK'),
            onPressed: () {
              Navigator.of(dialogContext).pop(teamName); // Dismiss alert dialog
            },
          ),
        ],
      );
    },
  );
}

enum Departments { Production, Research, Purchasing, Marketing, Accounting }

Future<Departments> _asyncSimpleDialog(BuildContext context) async {
  return await showDialog<Departments>(
    context: context,
    barrierDismissible: true,
    // false = user must tap button, true = tap outside dialog
    builder: (BuildContext dialogContext) {
      return SimpleDialog(
        title: const Text('Select Departments '),
        children: <Widget>[
          SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context, Departments.Production);
            },
            child: const Text('Production'),
          ),
          SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context, Departments.Research);
            },
            child: const Text('Research'),
          ),
          SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context, Departments.Purchasing);
            },
            child: const Text('Purchasing'),
          ),
          SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context, Departments.Marketing);
            },
            child: const Text('Marketing'),
          ),
          SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context, Departments.Accounting);
            },
            child: const Text('Accounting'),
          ),
        ],
      );
    },
  );
}
