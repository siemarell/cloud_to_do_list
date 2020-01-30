import '../models/task.dart';
import 'package:flutter/material.dart';

class TaskDetailScreen extends StatelessWidget {
  final Task _task;

  TaskDetailScreen(this._task);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${_task.title}'),
      ),
      body: Column(
        children: <Widget>[
          Text('${_task.title}'),
          Text('${_task.description}'),
          Text('${_task.dueTo}')
        ],
      ),
    );
  }
}
