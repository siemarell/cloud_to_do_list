// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TasksStore on _TasksStore, Store {
  final _$tasksAtom = Atom(name: '_TasksStore.tasks');

  @override
  List<Task> get tasks {
    _$tasksAtom.context.enforceReadPolicy(_$tasksAtom);
    _$tasksAtom.reportObserved();
    return super.tasks;
  }

  @override
  set tasks(List<Task> value) {
    _$tasksAtom.context.conditionallyRunInAction(() {
      super.tasks = value;
      _$tasksAtom.reportChanged();
    }, _$tasksAtom, name: '${_$tasksAtom.name}_set');
  }

  final _$_TasksStoreActionController = ActionController(name: '_TasksStore');

  @override
  dynamic syncTasks() {
    final _$actionInfo = _$_TasksStoreActionController.startAction();
    try {
      return super.syncTasks();
    } finally {
      _$_TasksStoreActionController.endAction(_$actionInfo);
    }
  }
}
