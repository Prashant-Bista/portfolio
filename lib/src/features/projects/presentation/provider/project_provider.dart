
import 'package:portfolio/src/features/projects/data/project_model.dart';
import 'package:portfolio/src/features/projects/data/project_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'project_provider.g.dart';

@riverpod
Future<List<ProjectModel>> getProject (Ref ref)async{

  final result = await ref.read(projectRepositoryProvider).getProject();
  return result.fold((failure)=>throw(failure), (data)=>data);
}