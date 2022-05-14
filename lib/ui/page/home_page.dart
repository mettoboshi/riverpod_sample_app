import 'package:flutter/material.dart';
import 'package:flutter_riverpod_sample_app/data/status.dart';

import '/ui/components/list_item.dart';
import '/data/task.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Task task = Task('title', Status.Todo);
    return Scaffold(
        body: ListView(
      children: [
        ListItem(task: Task('title', Status.Todo)),
      ],
    ));
  }
}
