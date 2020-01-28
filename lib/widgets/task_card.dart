import '../models/task.dart';
import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final Task _task;

  TaskCard(this._task);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(_task.title),
              subtitle: Text(_task.description),
            )));
  }
}
