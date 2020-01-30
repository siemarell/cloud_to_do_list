import 'package:cloud_to_do_list/models/task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class TaskCard extends StatelessWidget {
  final Task _task;

  TaskCard(this._task);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Observer(
          builder: (_) => CheckboxListTile(
            value: _task.completed,
            onChanged: (v) => _task.completed = v,
            title: Text(_task.title),
            subtitle: Text(_task.description),
          ),
        ),
      ),
    );
  }
}
 