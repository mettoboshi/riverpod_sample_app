import 'package:flutter/material.dart';
import 'package:flutter_riverpod_sample_app/data/status.dart';
import 'package:flutter_riverpod_sample_app/main.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/ui/components/list_item.dart';
import '/data/task.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tasks = ref.watch(taskListProvider);

    return Scaffold(
        appBar: AppBar(
          title: Text('タスク一覧'),
        ),
        body: ListView(
          children: [
            for (final task in tasks) ListItem(task: task),
          ],
        ));
  }
}
