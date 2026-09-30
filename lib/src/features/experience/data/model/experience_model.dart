import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio/src/core/utils/time_stamp_converter.dart';
part 'experience_model.g.dart';
part 'experience_model.freezed.dart';
@freezed 
abstract class ExperienceModel with _$ExperienceModel{
  const factory ExperienceModel({
required String company,
required String role,
@TimestampConverter()
 DateTime? end,
  required int order,

required List<String> tags,
@TimestampConverter()
 DateTime? start,


  })=_ExperienceModel;
factory ExperienceModel.fromJson(Map<String,dynamic> json)=> _$ExperienceModelFromJson(json);

}