import 'package:json_annotation/json_annotation.dart';
import 'package:mobx/mobx.dart';
part 'task.g.dart';

@JsonSerializable(nullable: false)
class Task extends _Task with _$Task {
  Task();

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

  Map<String, dynamic> toJson() => _$TaskToJson(this);
}

abstract class _Task with Store {
  final String id;

  @observable
  String title;

  @observable
  String description;

  @observable
  bool completed;

  @observable
  DateTime dueTo;
  final DateTime created;

  _Task(
      {this.id,
      this.title,
      this.description,
      this.completed,
      this.dueTo,
      this.created});
}
