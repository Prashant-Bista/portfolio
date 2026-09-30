import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

import 'package:portfolio/src/core/config/firebase/firebase_provider.dart';
import 'package:portfolio/src/features/home/data/model/personal_info_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'personal_info_datasource.g.dart';
@riverpod 
PersonalInfoDatasource personalDetailsDataSource(Ref ref){
  final firestore = ref.read(firebaseProvider);
  return PersonalInfoDatasource(firestore: firestore);
}

class PersonalInfoDatasource {
  final FirebaseFirestore firestore;
  PersonalInfoDatasource({required this.firestore});
  Future<PersonalInfoModel?> getPersonalInfo() async{
    try{
      final snapshot = await firestore.collection("personal_info").limit(1).get();
      if(snapshot.docs[0]!=null){
        debugPrint(snapshot.docs[0].data().toString());

            return PersonalInfoModel.fromJson(snapshot.docs[0].data());
      }
    }
    catch(e){
            debugPrint("Error fetching personal details from Firestore: $e");

return  null;
    }
  }
}