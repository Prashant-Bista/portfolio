import 'package:freezed_annotation/freezed_annotation.dart';
part 'experience_model.g.dart';
part 'experience_model.freezed.dart';
@freezed 
abstract class ExperienceModel with _$ExperienceModel{
  const factory ExperienceModel({
required String company,
required DateTime start,
required String role,
required DateTime? end,
required List<String> tags,



  })=_ExperienceModel;
factory ExperienceModel.fromJson(Map<String,dynamic> json)=> _$ExperienceModelFromJson(json);

}