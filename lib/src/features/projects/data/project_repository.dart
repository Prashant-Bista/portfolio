import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dartz/dartz.dart';
import 'package:portfolio/src/core/config/failure/failure.dart';
import 'package:portfolio/src/features/projects/data/project_data_source.dart';
import 'package:portfolio/src/features/projects/data/project_model.dart';


final projectRepositoryProvider = Provider<ProjectRepository>((Ref ref){
  final data = ref.read(projectDataSourceProvider);
  return ProjectRepository(data: data);
});

class ProjectRepository {
  final ProjectDataSource data;
  ProjectRepository({required this.data});

  Future <Either<Failure,List<ProjectModel>>> getProject()async{
try{
final result = await data.getProject();
return Right(result);
}catch(e){
debugPrint("Error getting Project $e");
return Left(Failure.unavailable(e.toString()));
}
  }

}