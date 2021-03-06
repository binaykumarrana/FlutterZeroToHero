import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgets/home/topic.dart';
import 'package:widgets/home/topic_list.dart';

class TopicPage extends StatelessWidget {
  _buildTopicList() {
    return <Topic>[
      const Topic(name: 'AppTheme'),
      const Topic(name: 'Custom Fonts'),
      const Topic(name: 'Assets'),
      const Topic(name: 'Text/Label'),
      const Topic(name: 'Button'),
      const Topic(name: 'Button Bar'),
      const Topic(name: 'Image'),
      const Topic(name: 'Icon'),
      const Topic(name: 'Row'),
      const Topic(name: 'Column'),
      const Topic(name: 'Input Text'),
      const Topic(name: 'TabsController'),
      const Topic(name: 'DefaultTabsController'),
      const Topic(name: 'Bottom Navigation'),
      const Topic(name: 'Default ListView'),
      const Topic(name: 'Custom ListView'),
      const Topic(name: "Search with List"),
      const Topic(name: "Search with Grid"),
      const Topic(name: 'Navigation Drawer'),
      const Topic(name: 'CheckBox'),
      const Topic(name: 'Switch'),
      const Topic(name: 'Slider'),
      const Topic(name: 'Date&Time Picker'),
      const Topic(name: 'Radio'),
      const Topic(name: 'AlertDialog'),
      const Topic(name: 'BottomSheet'),
      const Topic(name: 'ExpansionPanelTile'),
      const Topic(name: 'ExpansionPanelList'),
      const Topic(name: 'SnackBar'),
      const Topic(name: 'Card'),
      const Topic(name: 'Chips'),
      const Topic(name: 'CircularProgressIndicator'),
      const Topic(name: 'GridView'),
      const Topic(name: 'LinearProgressIndicator'),
      const Topic(name: 'Tooltip'),
      const Topic(name: 'Stepper'),
      const Topic(name: 'ToggleButtons'),
      const Topic(name: 'Table'),
      const Topic(name: 'DataTable'),
      const Topic(name: 'Sqflite/Sqlite'),
      const Topic(name: 'PopupMenuButton'),
      const Topic(name: 'Login'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: TopicList(_buildTopicList()));
  }
}
