import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/src/core/config/firebase/firebase_provider.dart';
import 'package:portfolio/src/features/contact/data/contact_model.dart';

final contactDataSourceProvider = Provider<ContactDataSource>((Ref ref){
  final firestore = ref.read(firebaseProvider);
  return ContactDataSource(firestore: firestore);
});

class ContactDataSource {
  final FirebaseFirestore firestore;
  ContactDataSource({required this.firestore});

  Future setContact(Map<String,dynamic> data)async{
 await firestore.collection("messages").add(data);

  
  }
}