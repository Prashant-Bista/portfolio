import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/src/core/config/firebase/firebase_provider.dart';
import 'package:portfolio/src/features/projects/data/project_model.dart';

final projectDataSourceProvider = Provider<ProjectDataSource>((Ref ref){
  final firestore = ref.read(firebaseProvider);
  return ProjectDataSource(firestore: firestore);
});

class ProjectDataSource {
  final FirebaseFirestore firestore;
  ProjectDataSource({required this.firestore});

  Future<List<ProjectModel>> getProject()async{
 final snapshot  = await firestore.collection("projects").get();

    List<ProjectModel> projects=snapshot.docs.map((doc){
      return ProjectModel.fromJson(doc.data());
    }).toList();
  
     return projects;
  }
}