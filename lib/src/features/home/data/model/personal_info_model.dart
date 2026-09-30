import 'package:freezed_annotation/freezed_annotation.dart';
part 'personal_info_model.g.dart';
part 'personal_info_model.freezed.dart';

@freezed 
abstract class PersonalInfoModel with _$PersonalInfoModel{
  const factory PersonalInfoModel({
required String name,
required String address,
required String email,
required String photo,
required String phone,
required String description,

@JsonKey(name:"tech_stack")
required  Map<String, dynamic> techStack,

@JsonKey(name:"work_experience")

required String workExperience

  })=_PersonalInfoModel;
factory PersonalInfoModel.fromJson(Map<String,dynamic> json)=> _$PersonalInfoModelFromJson(json);

}