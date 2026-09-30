import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dartz/dartz.dart';
import 'package:portfolio/src/core/config/failure/failure.dart';
import 'package:portfolio/src/features/experience/data/data_source/experience_data_source.dart';
import 'package:portfolio/src/features/experience/data/model/experience_model.dart';

final experienceRepositoryProvider = Provider<ExperienceRepository>((Ref ref){
  final data = ref.read(experienceDataSourceProvider);
  return ExperienceRepository(data: data);
});

class ExperienceRepository {
  final ExperienceDataSource data;
  ExperienceRepository({required this.data});

  Future <Either<Failure,List<ExperienceModel>>> getExperience()async{
try{
final result = await data.getExperience();
return Right(result);
}catch(e){
debugPrint("Error getting experience $e");
return Left(Failure.unavailable(e.toString()));
}
  }

}