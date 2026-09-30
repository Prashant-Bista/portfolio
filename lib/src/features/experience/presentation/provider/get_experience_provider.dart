import 'package:portfolio/src/features/experience/data/model/experience_model.dart';
import 'package:portfolio/src/features/experience/data/repository/experience_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_experience_provider.g.dart';


@riverpod
Future<List<ExperienceModel>> getExperience (Ref ref)async{

  final result = await ref.read(experienceRepositoryProvider).getExperience();
  return result.fold((failure)=>throw(failure), (data)=>data);
}