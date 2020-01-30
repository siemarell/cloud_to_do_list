import 'package:cloud_to_do_list/models/task.dart';
import 'package:cloud_to_do_list/screens/task_detail_screen.dart';
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
          builder: (_) => Row(
            children: <Widget>[
              Checkbox(
                value: _task.completed,
                onChanged: (v) => _task.completed = v,
              ),
              Expanded(
                // child: SizedBox(
                // height: 80.0,
                child: ListTile(
                  title: Text(_task.title),
                  subtitle: Text(_task.description),
                ),
                // ),
              ),
              IconButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (_) => TaskDetailScreen(_task))),
                icon: Icon(Icons.edit),
              )
            ],
          ),
        ),
      ),
    );
  }
}
