import 'package:cloud_to_do_list/stores/root_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import './widgets/task_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final rootStore = Provider.of<RootStore>(context);
    final tasks = rootStore.tasksStore.tasks;
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: rootStore.accountStore.logout,
          )
        ],
        title: Text('Home'),
      ),
      body: Observer(
        builder: (_) => ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, i) => TaskCard(tasks[i]),
        )
      ),
    );
  }
}
