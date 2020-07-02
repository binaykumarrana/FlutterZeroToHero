import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgets/home/topic.dart';
import 'package:widgets/home/topic_list.dart';

class TopicPage extends StatelessWidget {
  _buildTopicList() {
    return <Topic>[
      const Topic(name: 'AppTheme'),
      const Topic(name: 'Text/Label'),
      const Topic(name: 'Button'),
      const Topic(name: 'Container'),
      const Topic(name: 'Custom Fonts'),
      const Topic(name: 'Assets'),
      const Topic(name: 'List'),
      const Topic(name: 'Image'),
      const Topic(name: 'Icon'),
      const Topic(name: 'Row'),
      const Topic(name: 'Column'),
      const Topic(name: 'Input Text'),
      const Topic(name: 'Tabs'),
      const Topic(name: 'Bottom Navigation'),
      const Topic(name: 'Toast/Snakbar'),
      const Topic(name: 'Stateless Widgets'),
      const Topic(name: 'Stateful Widgets'),
      const Topic(name: 'Alert Dialog'),
      const Topic(name: 'Navigation Drawer'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: TopicList(_buildTopicList()));
  }
}
