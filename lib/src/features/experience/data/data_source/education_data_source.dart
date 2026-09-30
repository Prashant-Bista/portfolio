import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/src/core/config/firebase/firebase_provider.dart';
import 'package:portfolio/src/features/experience/data/model/education_model.dart';

final educationDataSourceProvider = Provider<EducationDataSource>((Ref ref){
  final firestore = ref.read(firebaseProvider);
  return EducationDataSource(firestore: firestore);
});

class EducationDataSource {
  final FirebaseFirestore firestore;
  EducationDataSource({required this.firestore});

  Future<List<EducationModel>> getEducation()async{
 final snapshot  = await firestore.collection("education").get();

    List<EducationModel> educations=snapshot.docs.map((doc){
      return EducationModel.fromJson(doc.data());
    }).toList();
  
     educations.sort((a,b)=>a.order.compareTo(b.order));
     return educations;
  }
}