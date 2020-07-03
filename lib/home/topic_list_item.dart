import 'package:flutter/material.dart';
import 'package:widgets/font/font_screen.dart';
import 'package:widgets/home/topic.dart';
import 'package:widgets/theme/app_theme.dart';

class TopicListItem extends StatelessWidget {
  final Topic topic;

  TopicListItem(this.topic);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(topic.name),
        onTap: () {
          if (topic.name == "AppTheme") {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => AppTheme()));
          }else if(topic.name == "Custom Fonts") {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => CustomFonts()));
          }
        });
  }
}
