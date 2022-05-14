import 'package:flutter/material.dart';

import '/data/task.dart';

class ListItem extends StatelessWidget {
  ListItem({Key? key, required this.task}) : super(key: key);

  final Task task;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.blue,
      child: Text(task.title),
    );
  }
}
