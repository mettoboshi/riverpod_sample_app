import 'package:hooks_riverpod/hooks_riverpod.dart';

import './task.dart';
import './status.dart';

class TaskNotifier extends StateNotifier<List<Task>> {
  TaskNotifier([List<Task>? initialTasks]) : super(initialTasks ?? []);

  void addTask(String title) {
    state = [...state, Task(title, Status.Todo)];
  }
}

final taskProvider = StateNotifierProvider<TaskNotifier, List<Task>>((ref) {
  return TaskNotifier();
});
