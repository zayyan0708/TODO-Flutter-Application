// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, camel_case_types, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function longPressCallback;
  TaskTile(
      {required this.taskTitle,
      required this.isChecked,
      required this.checkboxCallback,
      required this.longPressCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: (() {
        longPressCallback();
      }),
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (z) {
          checkboxCallback();
        },
      ),
    );
  }
}
