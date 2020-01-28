import '../models/task.dart';
import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final Task _task;
  
  TaskCard(this._task);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Center(child: Text('${_task.title}', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),)
        ],
      ),
    );
  }

}