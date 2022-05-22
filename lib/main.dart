import 'package:flutter/material.dart';
import 'package:flutter_riverpod_sample_app/data/status.dart';
import 'package:flutter_riverpod_sample_app/data/task_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'ui/page/home_page.dart';
import 'ui/page/random_number_page.dart';
import 'data/task_notifier.dart';
import 'data/task.dart';

// 値（ここでは "Hello world"）を格納する「プロバイダ」を作成します。
// プロバイダを使うことで値のモックやオーバーライドが可能になります。
final helloWorldProvider = Provider((_) => 'Hello world');
// final myProvider = Provider((ref) {
//   return i;
// });
// final refProvider = Provider<int>((ref) {
//   final repository = ref.watch(myProvider);
//   return;
// });

final taskListProvider = StateNotifierProvider<TaskNotifier, List<Task>>((ref) {
  return TaskNotifier([
    Task('title1', Status.Todo),
    Task('title2', Status.Todo),
    Task('title3', Status.Todo),
  ]);
});

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Riverpod Sample',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
