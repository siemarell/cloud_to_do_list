// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Task _$TaskFromJson(Map<String, dynamic> json) {
  return Task()
    ..title = json['title'] as String
    ..description = json['description'] as String
    ..completed = json['completed'] as bool
    ..dueTo = DateTime.parse(json['dueTo'] as String);
}

Map<String, dynamic> _$TaskToJson(Task instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'completed': instance.completed,
      'dueTo': instance.dueTo.toIso8601String(),
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Task on _Task, Store {
  final _$titleAtom = Atom(name: '_Task.title');

  @override
  String get title {
    _$titleAtom.context.enforceReadPolicy(_$titleAtom);
    _$titleAtom.reportObserved();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.context.conditionallyRunInAction(() {
      super.title = value;
      _$titleAtom.reportChanged();
    }, _$titleAtom, name: '${_$titleAtom.name}_set');
  }

  final _$descriptionAtom = Atom(name: '_Task.description');

  @override
  String get description {
    _$descriptionAtom.context.enforceReadPolicy(_$descriptionAtom);
    _$descriptionAtom.reportObserved();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.context.conditionallyRunInAction(() {
      super.description = value;
      _$descriptionAtom.reportChanged();
    }, _$descriptionAtom, name: '${_$descriptionAtom.name}_set');
  }

  final _$completedAtom = Atom(name: '_Task.completed');

  @override
  bool get completed {
    _$completedAtom.context.enforceReadPolicy(_$completedAtom);
    _$completedAtom.reportObserved();
    return super.completed;
  }

  @override
  set completed(bool value) {
    _$completedAtom.context.conditionallyRunInAction(() {
      super.completed = value;
      _$completedAtom.reportChanged();
    }, _$completedAtom, name: '${_$completedAtom.name}_set');
  }

  final _$dueToAtom = Atom(name: '_Task.dueTo');

  @override
  DateTime get dueTo {
    _$dueToAtom.context.enforceReadPolicy(_$dueToAtom);
    _$dueToAtom.reportObserved();
    return super.dueTo;
  }

  @override
  set dueTo(DateTime value) {
    _$dueToAtom.context.conditionallyRunInAction(() {
      super.dueTo = value;
      _$dueToAtom.reportChanged();
    }, _$dueToAtom, name: '${_$dueToAtom.name}_set');
  }
}
