// ignore_for_file: prefer_final_fields, non_constant_identifier_names

import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'milk'),
    Task(name: 'milk'),
    Task(name: 'milk'),
  ];
  int get TaskCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get Tasks {
    return UnmodifiableListView(_tasks);
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  void addTask(String newTask) {
    _tasks.add(Task(name: newTask));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleTask();
    notifyListeners();
  }
}
