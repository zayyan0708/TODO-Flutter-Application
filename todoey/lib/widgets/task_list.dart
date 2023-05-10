// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/modules/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: ((context, index) {
            return TaskTile(
              taskTitle: taskData.Tasks[index].name,
              isChecked: taskData.Tasks[index].isDone,
              checkboxCallback: () {
                taskData.updateTask(taskData.Tasks[index]);
              },
              longPressCallback: () {
                taskData.deleteTask(taskData.Tasks[index]);
              },
            );
          }),
          itemCount: taskData.TaskCount,
        );
      },
    );
  }
}
