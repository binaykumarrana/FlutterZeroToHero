import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputDemo extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

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
          "InputText Demo",
          style: TextStyle(fontFamily: 'PoppinsSemiBold'),
        ),
      ),
      body: Column(children: <Widget>[
        Form(
            key: _formKey,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Enter your email',
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0,4,0,16),
                    child: RaisedButton(
                      onPressed: () {
                        // Validate will return true if the form is valid, or false if
                        // the form is invalid.
                        if (_formKey.currentState.validate()) {
                          // Process data.
                        }
                      },
                      child: Text('Submit', style: TextStyle(fontFamily: 'PoppinsRegular'),),
                    ),
                  ),
                ])),
        Padding(
          padding: EdgeInsets.fromLTRB(16,0,16,0),
          child: TextField(
            decoration: const InputDecoration(
              hintText: 'Enter your email',
            ),
          ),
        ),
      ]),
    );
  }
}
