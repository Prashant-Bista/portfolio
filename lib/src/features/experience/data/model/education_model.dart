import 'package:freezed_annotation/freezed_annotation.dart';
part 'education_model.g.dart';
part 'education_model.freezed.dart';
@freezed 
abstract class EducationModel with _$EducationModel{
  const factory EducationModel({
required String course,
required String address,
required DateTime? year,
required String institute,
required String percentage,


  })=_EducationModel;
factory EducationModel.fromJson(Map<String,dynamic> json)=> _$EducationModelFromJson(json);

}