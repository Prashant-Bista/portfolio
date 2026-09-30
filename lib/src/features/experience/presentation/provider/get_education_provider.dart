
import 'package:portfolio/src/features/experience/data/model/education_model.dart';
import 'package:portfolio/src/features/experience/data/repository/education_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_education_provider.g.dart';

@riverpod
Future<List<EducationModel>> getEducation (Ref ref)async{

  final result = await ref.read(educationRepositoryProvider).getEducation();
  return result.fold((failure)=>throw(failure), (data)=>data);
}