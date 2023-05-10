// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unused_import, duplicate_import

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/modules/task_data.dart';
import 'screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TaskData()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    );
  }
}
