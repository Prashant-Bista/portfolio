import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dartz/dartz.dart';
import 'package:portfolio/src/core/config/failure/failure.dart';
import 'package:portfolio/src/features/experience/data/data_source/education_data_source.dart';
import 'package:portfolio/src/features/experience/data/model/education_model.dart';


final educationRepositoryProvider = Provider<EducationRepository>((Ref ref){
  final data = ref.read(educationDataSourceProvider);
  return EducationRepository(data: data);
});

class EducationRepository {
  final EducationDataSource data;
  EducationRepository({required this.data});

  Future <Either<Failure,List<EducationModel>>> getEducation()async{
try{
final result = await data.getEducation();
return Right(result);
}catch(e){
debugPrint("Error getting Education $e");
return Left(Failure.unavailable(e.toString()));
}
  }

}