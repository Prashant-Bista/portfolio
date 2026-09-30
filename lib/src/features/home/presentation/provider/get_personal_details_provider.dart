import 'package:portfolio/src/features/home/data/model/personal_info_model.dart';
import 'package:portfolio/src/features/home/data/repository/personal_details_repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_personal_details_provider.g.dart';

@riverpod
Future<PersonalInfoModel> getPersonalDetails(Ref ref) async{
  final result = await ref.read(personalDetailsRepoProvider).getPersonalInfo();
  return result.fold((failure)=>throw failure.message,(data)=>data);
}