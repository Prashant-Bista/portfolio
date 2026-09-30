import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:portfolio/src/core/utils/time_stamp_converter.dart';
part 'education_model.g.dart';
part 'education_model.freezed.dart';
@freezed 
abstract class EducationModel with _$EducationModel{
  const factory EducationModel({
 String? course,
required String address,
@TimestampConverter()
 DateTime? year,
 required int order,
required String institute,
required String level,
 String? percentage,
@JsonKey(name: "GPA")
 String? gpa,


  })=_EducationModel;
factory EducationModel.fromJson(Map<String,dynamic> json)=> _$EducationModelFromJson(json);

}