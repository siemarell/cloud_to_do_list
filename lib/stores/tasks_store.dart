import 'dart:convert';
import '../models/task.dart';
import 'package:mobx/mobx.dart';
import 'root_store.dart';

part 'tasks_store.g.dart';

final dataStr = '''[
	{
		"title": "task1",
		"description": "foo",
		"completed": false,
		"dueTo": "2020-01-27",
		"created": "2020-01-27T13:41:57.375Z"
	},
	{
		"title": "task2",
		"description": "foo2",
		"completed": false,
		"dueTo": "2020-01-27",
		"created": "2020-01-27T13:41:57.375Z"
	},
	{
		"title": "task3",
		"description": "foo3",
		"completed": false,
		"dueTo": "2020-01-27",
		"created": "2020-01-27T13:41:57.375Z"
	}
]''';

class TasksStore = _TasksStore with _$TasksStore;

abstract class _TasksStore with Store {
  RootStore rootStore;

  _TasksStore(this.rootStore) {
    this.syncTasks();
  }

  @observable
  List<Task> tasks = [];


  @action
  syncTasks() {
    final user = this.rootStore.accountStore.user;
    if (user != null) {
      final List<Map<String, dynamic>> parsedTasks = json.decode(dataStr);
      parsedTasks.forEach((t) => this.tasks.add(Task.fromJson(t)));
      // call api to get tasks
    }
  }
}
