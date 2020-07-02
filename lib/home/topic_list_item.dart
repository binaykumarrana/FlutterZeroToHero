import 'package:flutter/material.dart';
import 'package:widgets/home/topic.dart';

class TopicListItem extends StatelessWidget {
  final Topic topic;

  TopicListItem(this.topic);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(topic.name),
    );
  }
}
