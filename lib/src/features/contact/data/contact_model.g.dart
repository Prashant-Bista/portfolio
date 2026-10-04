// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ContactModel _$ContactModelFromJson(Map<String, dynamic> json) =>
    _ContactModel(
      name: json['name'] as String,
      email: json['email'] as String,
      message: json['message'] as String,
      subject: json['subject'] as String,
      contact: json['contact'] as String?,
    );

Map<String, dynamic> _$ContactModelToJson(_ContactModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'message': instance.message,
      'subject': instance.subject,
      'contact': instance.contact,
    };
