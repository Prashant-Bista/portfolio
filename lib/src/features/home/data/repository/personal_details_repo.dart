import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:portfolio/src/core/config/failure/failure.dart';
import 'package:portfolio/src/features/home/data/data_source/personal_info_datasource.dart';
import 'package:portfolio/src/features/home/data/model/personal_info_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'personal_details_repo.g.dart';

@riverpod 
PersonalDetailsRepo personalDetailsRepo(Ref ref){
  final data = ref.read(personalDetailsDataSourceProvider);
  return PersonalDetailsRepo(data: data);
}

class PersonalDetailsRepo {
  final PersonalInfoDatasource data;
  PersonalDetailsRepo({required this.data});
  Future<Either<Failure,PersonalInfoModel>> getPersonalInfo() async{
    
    try{
          final result =await data.getPersonalInfo();
          if(result!=null){
                      return Right(result);

          }
    }
    catch (e){
      debugPrint("Personal Info is not available $e" );
    }
          return Left(Failure.unavailable("Personal Info is not available"));

  } 
}