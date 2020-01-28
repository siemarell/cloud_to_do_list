// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Task _$TaskFromJson(Map<String, dynamic> json) {
  return Task(
    id: json['id'] as String,
    title: json['title'] as String,
    description: json['description'] as String,
    completed: json['completed'] as bool,
    dueTo:
        json['dueTo'] == null ? null : DateTime.parse(json['dueTo'] as String),
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
  );
}

Map<String, dynamic> _$TaskToJson(Task instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'completed': instance.completed,
      'dueTo': instance.dueTo?.toIso8601String(),
      'created': instance.created?.toIso8601String(),
    };
