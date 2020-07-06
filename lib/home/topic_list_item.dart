import 'package:flutter/material.dart';
import 'package:widgets/asset/asset_screen.dart';
import 'package:widgets/button/button_bar.dart';
import 'package:widgets/button/button_demo.dart';
import 'package:widgets/font/font_screen.dart';
import 'package:widgets/home/topic.dart';
import 'package:widgets/icons/icon_demo.dart';
import 'package:widgets/image/image_demo.dart';
import 'package:widgets/text/text_label_demo.dart';
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
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => AppTheme()));
          } else if (topic.name == "Custom Fonts") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => CustomFonts()));
          } else if (topic.name == "Assets") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => AssetDemo()));
          } else if (topic.name == "Text/Label") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => TextLabelDemo()));
          } else if (topic.name == "Button") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ButtonDemo()));
          } else if (topic.name == "Button Bar") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ButtonBarDemo()));
          } else if (topic.name == "Image") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ImageDemo()));
          } else if (topic.name == "Icon") {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => IconDemo()));
          }
        });
  }
}
