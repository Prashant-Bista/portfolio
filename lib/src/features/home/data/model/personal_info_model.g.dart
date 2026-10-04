// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PersonalInfoModel _$PersonalInfoModelFromJson(Map<String, dynamic> json) =>
    _PersonalInfoModel(
      name: json['name'] as String,
      address: json['address'] as String,
      email: json['email'] as String,
      photo: json['photo'] as String,
      phone: json['phone'] as String,
      description: json['description'] as String,
      facebook: json['facebook'] as String,
      github: json['github'] as String,
      instagram: json['instagram'] as String,
      linkedin: json['linkedin'] as String,
      techStack: json['tech_stack'] as Map<String, dynamic>,
      workExperience: json['work_experience'] as String,
    );

Map<String, dynamic> _$PersonalInfoModelToJson(_PersonalInfoModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'email': instance.email,
      'photo': instance.photo,
      'phone': instance.phone,
      'description': instance.description,
      'facebook': instance.facebook,
      'github': instance.github,
      'instagram': instance.instagram,
      'linkedin': instance.linkedin,
      'tech_stack': instance.techStack,
      'work_experience': instance.workExperience,
    };
