// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EducationModel _$EducationModelFromJson(Map<String, dynamic> json) =>
    _EducationModel(
      course: json['course'] as String?,
      address: json['address'] as String,
      year: const TimestampConverter().fromJson(json['year']),
      order: (json['order'] as num).toInt(),
      institute: json['institute'] as String,
      level: json['level'] as String,
      percentage: json['percentage'] as String?,
      gpa: json['GPA'] as String?,
    );

Map<String, dynamic> _$EducationModelToJson(_EducationModel instance) =>
    <String, dynamic>{
      'course': instance.course,
      'address': instance.address,
      'year': const TimestampConverter().toJson(instance.year),
      'order': instance.order,
      'institute': instance.institute,
      'level': instance.level,
      'percentage': instance.percentage,
      'GPA': instance.gpa,
    };
