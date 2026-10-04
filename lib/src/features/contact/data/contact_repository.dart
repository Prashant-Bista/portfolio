import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dartz/dartz.dart';
import 'package:portfolio/src/core/config/failure/failure.dart';
import 'package:portfolio/src/features/contact/data/contact_data_source.dart';
import 'package:portfolio/src/features/contact/data/contact_model.dart';



final contactRepositoryProvider = Provider<ContactRepository>((Ref ref){
  final data = ref.read(contactDataSourceProvider);
  return ContactRepository(data: data);
});

class ContactRepository {
  final ContactDataSource data;
  ContactRepository({required this.data});

  Future<Either<Failure,bool>>  setContact(ContactModel contact)async{
try{
await data.setContact(contact.toJson());
return Right(true);
}catch(e){
debugPrint("Error getting Contact $e");
return Left( Failure.unavailable(e.toString()));
}
  }

}