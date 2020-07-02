import 'package:flutter/material.dart';
import 'package:widgets/home/topic.dart';
import 'package:widgets/home/topic_list_item.dart';

class TopicList extends StatelessWidget {
  final List<Topic> topic;

  TopicList(this.topic);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      children: _buildTopicList(),
    );
  }

  List<TopicListItem> _buildTopicList() {
    return topic.map((topic) => TopicListItem(topic)).toList();
  }
}
