import 'package:json_annotation/json_annotation.dart';
part 'task.g.dart';

@JsonSerializable()
class Task {
  String id;
  String title;
  String description;
  bool completed;
  DateTime dueTo;
  final DateTime created;

  Task(
      {this.id,
      this.title,
      this.description,
      this.completed,
      this.dueTo,
      this.created});

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

  Map<String, dynamic> toJson() => _$TaskToJson(this);
}
