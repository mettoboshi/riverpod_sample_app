import 'package:flutter/material.dart';

import '/ui/components/list_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
          height: 50,
          color: Colors.blue,
          child: Text('test1'),
        ),
        const ListItem(),
        const Text('test1'),
        const Text('test2'),
        const Text('test3'),
      ],
    ));
  }
}
