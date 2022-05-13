import 'package:flutter/material.dart';

import '/ui/components/list_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: const [
        ListItem(title: 'test10'),
        Text('test1'),
        Text('test2'),
        Text('test3'),
      ],
    ));
  }
}
