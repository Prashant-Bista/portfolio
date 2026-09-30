import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/src/core/config/firebase/firebase_provider.dart';
import 'package:portfolio/src/features/experience/data/model/experience_model.dart';

final experienceDataSourceProvider = Provider<ExperienceDataSource>((Ref ref){
  final firestore = ref.read(firebaseProvider);
  return ExperienceDataSource(firestore: firestore);
});

class ExperienceDataSource {
  final FirebaseFirestore firestore;
  ExperienceDataSource({required this.firestore});

  Future<List<ExperienceModel>> getExperience()async{
 final snapshot  = await firestore.collection("experience").get();

    List<ExperienceModel> experiences=snapshot.docs.map((doc){
      return ExperienceModel.fromJson(doc.data());
    }).toList();
  experiences.sort((a,b)=>b.order.compareTo(a.order));
    return experiences;
  }
}