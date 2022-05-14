import 'package:hooks_riverpod/hooks_riverpod.dart';

import './task.dart';
import './status.dart';

class TaskList extends StateNotifier<List<Task>> {
  TaskList([List<Task>? initialTasks]) : super(initialTasks ?? []);

  void add(String title) {
    // ...state,
    Task(title, Status.Todo);
  }
}
