import 'package:flutter/material.dart';

import '/data/task.dart';

class ListItem extends StatelessWidget {
  ListItem({Key? key, required this.task}) : super(key: key);

  final Task task;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50,
          color: Colors.white,
          child: Text(task.title),
        ),
        Align(
            alignment: Alignment.centerRight,
            child: Container(
              height: 50,
              color: Colors.white,
              child: Text(task.title),
            ))
      ],
    );
  }
}
