// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'experience_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExperienceModel _$ExperienceModelFromJson(Map<String, dynamic> json) =>
    _ExperienceModel(
      company: json['company'] as String,
      role: json['role'] as String,
      end: const TimestampConverter().fromJson(json['end']),
      order: (json['order'] as num).toInt(),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      start: const TimestampConverter().fromJson(json['start']),
    );

Map<String, dynamic> _$ExperienceModelToJson(_ExperienceModel instance) =>
    <String, dynamic>{
      'company': instance.company,
      'role': instance.role,
      'end': const TimestampConverter().toJson(instance.end),
      'order': instance.order,
      'tags': instance.tags,
      'start': const TimestampConverter().toJson(instance.start),
    };
