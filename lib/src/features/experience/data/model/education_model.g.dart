// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EducationModel _$EducationModelFromJson(Map<String, dynamic> json) =>
    _EducationModel(
      course: json['course'] as String,
      address: json['address'] as String,
      year: json['year'] == null
          ? null
          : DateTime.parse(json['year'] as String),
      institute: json['institute'] as String,
      percentage: json['percentage'] as String,
    );

Map<String, dynamic> _$EducationModelToJson(_EducationModel instance) =>
    <String, dynamic>{
      'course': instance.course,
      'address': instance.address,
      'year': instance.year?.toIso8601String(),
      'institute': instance.institute,
      'percentage': instance.percentage,
    };
