import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        // AppBar Title
        title: Text(
            "AppTheme",
            style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 21.0),
          ),
      ),
      body: Container(
        // Another way to set the background color
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
          child: Container(
            // use the theme accent color as background color for this widget
            color: Theme.of(context).accentColor,
            child: Text(
              'Your Theme!',
              // Set text style as per theme
              style: Theme.of(context).textTheme.title,
            ),
          ),
        ),
      ),

      floatingActionButton: Theme(
        // override the accent color of theme for this widget only
        data: Theme.of(context).copyWith(
          colorScheme: Theme.of(context)
              .colorScheme
        ),
        child: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
