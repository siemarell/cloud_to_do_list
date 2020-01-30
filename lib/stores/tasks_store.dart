import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';

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
	},
  {
		"title": "task4",
		"description": "foo",
		"completed": false,
		"dueTo": "2020-01-27",
		"created": "2020-01-27T13:41:57.375Z"
	},
	{
		"title": "task5",
		"description": "foo2",
		"completed": false,
		"dueTo": "2020-01-27",
		"created": "2020-01-27T13:41:57.375Z"
	},
	{
		"title": "task6",
		"description": "foo3",
		"completed": false,
		"dueTo": "2020-01-27",
		"created": "2020-01-27T13:41:57.375Z"
	},
  {
		"title": "task7",
		"description": "foo",
		"completed": false,
		"dueTo": "2020-01-27",
		"created": "2020-01-27T13:41:57.375Z"
	},
	{
		"title": "task8",
		"description": "foo2",
		"completed": false,
		"dueTo": "2020-01-27",
		"created": "2020-01-27T13:41:57.375Z"
	},
	{
		"title": "task9",
		"description": "foo3",
		"completed": false,
		"dueTo": "2020-01-27",
		"created": "2020-01-27T13:41:57.375Z"
	}
]''';

class TasksStore = _TasksStore with _$TasksStore;

abstract class _TasksStore with Store {
  RootStore rootStore;

  _TasksStore(this.rootStore);

  @observable
  ObservableList<Task> tasks = ObservableList();

  @action
  syncTasks(FirebaseUser user) {
    print('syncing');
    final List<dynamic> parsedTasks = json.decode(dataStr);
    tasks = ObservableList.of(parsedTasks.map((j)=> Task.fromJson(j)));
    // parsedTasks.forEach((t) => this.tasks.add(Task.fromJson(t)));

  }
}
