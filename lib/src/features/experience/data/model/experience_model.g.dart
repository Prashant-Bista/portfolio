// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'experience_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExperienceModel _$ExperienceModelFromJson(Map<String, dynamic> json) =>
    _ExperienceModel(
      company: json['company'] as String,
      start: DateTime.parse(json['start'] as String),
      role: json['role'] as String,
      end: json['end'] == null ? null : DateTime.parse(json['end'] as String),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ExperienceModelToJson(_ExperienceModel instance) =>
    <String, dynamic>{
      'company': instance.company,
      'start': instance.start.toIso8601String(),
      'role': instance.role,
      'end': instance.end?.toIso8601String(),
      'tags': instance.tags,
    };
