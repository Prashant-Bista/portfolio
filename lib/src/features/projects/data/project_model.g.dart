// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProjectModel _$ProjectModelFromJson(Map<String, dynamic> json) =>
    _ProjectModel(
      google: json['google'] as String?,
      apple: json['apple'] as String?,
      github: json['github'] as String?,
      name: json['name'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      caseStudy: json['case_study'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$ProjectModelToJson(_ProjectModel instance) =>
    <String, dynamic>{
      'google': instance.google,
      'apple': instance.apple,
      'github': instance.github,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'tags': instance.tags,
      'case_study': instance.caseStudy,
    };
