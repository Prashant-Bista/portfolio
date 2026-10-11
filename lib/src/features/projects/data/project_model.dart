import 'package:freezed_annotation/freezed_annotation.dart';
part 'project_model.g.dart';
part 'project_model.freezed.dart';

@freezed 
abstract class ProjectModel with _$ProjectModel{
  const factory ProjectModel({
 String? google,
 String? apple,
 String? github,
required String name,
required String description,
required String image,
required List<String> tags,
@JsonKey(name:"case_study")
 Map<String,dynamic>? caseStudy

  })=_ProjectModel;
factory ProjectModel.fromJson(Map<String,dynamic> json)=> _$ProjectModelFromJson(json);

}